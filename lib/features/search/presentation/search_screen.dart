import 'package:e_book_store/core/extensions/extensions.dart';
import 'package:e_book_store/core/extensions/navigation_extension.dart';
import 'package:e_book_store/core/theming/app_colors.dart';
import 'package:e_book_store/core/theming/app_strings.dart';
import 'package:e_book_store/core/theming/app_styles.dart';
import 'package:e_book_store/core/theming/font_weight_helper.dart';
import 'package:e_book_store/core/utils/spacing.dart';
import 'package:e_book_store/core/widgets/app_text_form_field.dart';
import 'package:e_book_store/features/home/data/models/book_item_model.dart';
import 'package:e_book_store/features/search/data/models/filter_option_factory.dart';
import 'package:e_book_store/features/search/presentation/controllers/search_cubit.dart';
import 'package:e_book_store/features/search/presentation/widgets/filter_button.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_book_item.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_empty_screen_state.dart';
import 'package:e_book_store/features/search/presentation/widgets/search_micro_phone_button.dart';
import 'package:e_book_store/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
  bool _showFilters = false;
  bool _isKeyboardVisible = false;
  String? _orderBy;
  String? _printType;
  String? _langRestrict;
  String? _filter;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController.addListener(_onScroll);
    _focusNode.addListener(_onFocusChange);
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

  void _onFocusChange() {
    setState(() {
      _isKeyboardVisible = _focusNode.hasFocus;
    });
  }

  void _submitSearch(BuildContext context) {
    if (_formKey.currentState?.validate() ?? false) {
      String query = _searchController.text.toLowerCase();
      final encodedQuery = Uri.encodeQueryComponent(query);
      context.read<SearchCubit>().searchAboutBooks(
            encodedQuery,
            orderBy: _orderBy,
            printType: _printType,
            langRestrict: _langRestrict,
            filter: _filter,
          );
      setState(() {
        _showFilters = false;
      });
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.7) {
      String query = _searchController.text.toLowerCase();
      final encodedQuery = Uri.encodeQueryComponent(query);
      context.read<SearchCubit>().loadMoreBooks(
            encodedQuery,
            orderBy: _orderBy,
            printType: _printType,
            langRestrict: _langRestrict,
            filter: _filter,
          );
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

  void _toggleFilters() {
    setState(() {
      _showFilters = !_showFilters;
      if (_showFilters) _focusNode.unfocus();
    });
  }

  void _clearSelection() {
    setState(() {
      _orderBy = null;
      _printType = null;
      _langRestrict = null;
      _filter = null;
    });
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildSearchForm(),
                      verticalSpace(20),
                      if (_showFilters) _buildFilterContainer(),
                      if (!_showFilters &&
                          (state is SearchSuccessState ||
                              state is SearchLoadingMoreState))
                        _buildBookList(state),
                      if (state is SearchFailureState)
                        _buildErrorMessage(state.message),
                      if (!_isListening && state is SearchEmptyState)
                        _buildEmptyState(),
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
                width: 200.w,
                height: 200.h,
              ),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
        onPressed: _toggleFilters,
        child: Icon(_showFilters ? Icons.filter_list_off : Icons.filter_list),
      ),
    );
  }

  Widget _buildSearchForm() {
    return Row(
      children: [
        Expanded(
          child: Form(
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
              suffixIcon: FittedBox(
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8).h,
                      child: SearchMicroPhoneButton(
                        searchController: _searchController,
                        onListeningChanged: _onListeningChanged,
                        onStopListening: _onStopListening,
                      ),
                    ),
                    if (_isKeyboardVisible)
                      IconButton(
                        icon: Icon(
                          Icons.check,
                          size: 30.r,
                          color: AppColors.gray,
                        ),
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          _submitSearch(context);
                        },
                      ),
                  ],
                ),
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
                FocusScope.of(context).unfocus();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFilterContainer() {
    final filterTypes = ['Filter', 'Order By', 'Print Type', 'Language'];
    final filterOptions = filterTypes
        .map((type) => FilterOptionFactory.createFilterOption(type))
        .toList();

    return Container(
      padding: const EdgeInsets.all(16.0).r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Filters',
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeightHelper.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.clear_all, color: AppColors.mainBlue),
                onPressed: _clearSelection,
              ),
            ],
          ),
          verticalSpace(10),
          ...filterOptions.map((filterOption) {
            return FilterButton(
              label:
                  filterOption.runtimeType.toString().replaceAll('Option', ''),
              selectedValue: filterOption.selectedValue,
              options: filterOption.options,
              onChanged: (value) {
                setState(() {
                  switch (filterOption.runtimeType.toString()) {
                    case 'OrderByOption':
                      _orderBy = value;
                      break;
                    case 'PrintTypeOption':
                      _printType = value;
                      break;
                    case 'LanguageOption':
                      _langRestrict = value;
                      break;
                    case 'FilterTypeOption':
                      _filter = value;
                      break;
                  }
                  filterOption.apply(value);
                });
              },
              onClear: () {
                setState(() {
                  switch (filterOption.runtimeType.toString()) {
                    case 'OrderByOption':
                      _orderBy = null;
                      break;
                    case 'PrintTypeOption':
                      _printType = null;
                      break;
                    case 'LanguageOption':
                      _langRestrict = null;
                      break;
                    case 'FilterTypeOption':
                      _filter = null;
                      break;
                  }
                  filterOption.apply(null);
                });
              },
            );
          }),
        ],
      ),
    );
  }

  Widget _buildBookList(SearchState state) {
    final books = state is SearchSuccessState
        ? state.books
        : (state as SearchLoadingMoreState).books;
    return !_isListening
        ? Flexible(
            fit: FlexFit.loose,
            child: Skeletonizer(
              enabled: state is SearchLoadingState,
              child: ListView.separated(
                controller: _scrollController,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (state is SearchLoadingMoreState &&
                      index == books.length) {
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

  Widget _buildEmptyState() {
    return const SearchEmptyScreenState();
  }
}
