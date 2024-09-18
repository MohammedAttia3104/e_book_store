import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'controllers/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body:  Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is FreeBookLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is FreeBookLoadedState) {
              return Text('Books: ${state.books.kind}');
            } else if (state is FreeBookErrorState) {
              return Text('Error: ${state.message}');
            }
            return const Text('Home Screen');
          },
        ),
      ),
    );
  }
}
