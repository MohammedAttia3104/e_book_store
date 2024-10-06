import 'package:e_book_store/core/extensions/extensions.dart';
import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_book_item.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_micro_phone_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_strings.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/widgets/app_text_form_field.dart';
import '../../../generated/assets.dart';
import '../../home/data/models/book_item_model.dart';
import 'controllers/search_cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _searchController;
  final _formKey = GlobalKey<FormState>();
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();
  bool _isListening = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _submitSearch(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      final encodedQuery =
          Uri.encodeQueryComponent(_searchController.text.toLowerCase());
      context.read<SearchCubit>().searchAboutBooks(encodedQuery);
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      context.read<SearchCubit>().loadMoreBooks(_searchController.text);
    }
  }

  void _onListeningChanged(bool isListening) {
    setState(() {
      _isListening = isListening;
    });
  }

  void _onStopListening() {
    _submitSearch(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover Our Books',
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeightHelper.medium,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(16.0).r,
                  child: Column(
                    children: [
                      _buildSearchForm(),
                      verticalSpace(20),
                      // if (state is SearchLoadingState)
                      //   const SizedBox.shrink(), //TODO() => Skeletonizer(),
                      if (state is SearchSuccessState ||
                          state is SearchLoadingMoreState)
                        _buildBookList(state),
                      if (state is SearchFailureState)
                        _buildErrorMessage(state.message),
                    ],
                  ),
                ),
              );
            },
          ),
          if (_isListening)
            Center(
              child: Lottie.asset(
                'assets/lottie/wave.json',
                width: 200,
                height: 200,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSearchForm() {
    return Form(
      key: _formKey,
      child: AppTextFormField(
        controller: _searchController,
        focusNode: _focusNode,
        hintText: AppStrings.search,
        validator: (value) {
          if (value.isEmptyOrNull()) {
            return 'Please enter some text';
          }
          return null;
        },
        hintStyle: AppStyles.font20GrayRegular,
        suffixIcon: SearchMicroPhoneButton(
          searchController: _searchController,
          onListeningChanged: _onListeningChanged,
          onStopListening: _onStopListening,
        ),
        prefixIcon: Container(
          margin: const EdgeInsets.all(12).h,
          child: SvgPicture.asset(Assets.svgsSearch),
        ),
        fillColorBackGround: AppColors.moreLightGray,
        enabled: true,
        textInputAction: TextInputAction.search,
        onFieldSubmitted: (value) {
          _submitSearch(context);
        },
      ),
    );
  }

  Widget _buildBookList(SearchState state) {
    final books = state is SearchSuccessState
        ? state.books
        : (state as SearchLoadingMoreState).books;

    return !_isListening
        ? Expanded(
            child: Skeletonizer(
              enabled: state is SearchLoadingState,
              child: ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (state is SearchLoadingMoreState && index == books.length) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  return _buildBookItem(books[index]);
                },
                separatorBuilder: (context, index) => verticalSpace(12),
                itemCount: state is SearchLoadingMoreState
                    ? books.length + 1
                    : books.length,
              ),
            ),
          )
        : const SizedBox.shrink();
  }

  Widget _buildBookItem(BookItemModel book) {
    return SearchBookItem(book: book);
  }

  Widget _buildErrorMessage(String message) {
    return Text(
      message,
      style: const TextStyle(color: Colors.red),
    );
  }
}
