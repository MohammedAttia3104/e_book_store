import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/data/repositories/home_repository.dart';
import 'package:flutter/cupertino.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  late HomeRepository homeRepository;

  HomeCubit(this.homeRepository) : super(const HomeState.initial());

  Future<void> getFreeBooks(String query, String filtering) async {
    emit(const HomeState.freeBookLoadingState());
    final response = await homeRepository.getFreeBooks(query, filtering);
    response.when(
      success: (BooksModel books) {
        log('Books: $books');
        debugPrint(books.toString());
        emit(HomeState.freeBookLoadedState(books));
      },
      failure: (String message) {
        log('Error: $message');
        debugPrint(message);
        emit(HomeState.freeBookErrorState(message));
      },
    );
  }
}