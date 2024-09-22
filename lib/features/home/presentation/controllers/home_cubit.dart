import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:e_book_store/features/home/data/models/books_model.dart';
import 'package:e_book_store/features/home/data/repositories/home_repository.dart';
import 'package:flutter/cupertino.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  late HomeRepository homeRepository;

  HomeCubit(this.homeRepository) : super(const HomeState.initial());

  Future<void> getRecentlyAddedBooks(
      RecentlyAddedBooksParameters  recentlyAddedParameters) async {
    emit(const HomeState.recentlyAddedBooksLoadingState());
    final response =
        await homeRepository.getRecentlyAddedComputerBooks(recentlyAddedParameters);
    response.when(
      success: (BooksModel books) {
        log('Books: ${books.toString()}');
        debugPrint(books.toString());
        emit(HomeState.recentlyAddedBooksSuccessState(books));
      },
      failure: (String message) {
        log('Error: $message');
        debugPrint(message);
        emit(HomeState.recentlyAddedBooksErrorState(message));
      },
    );
  }
}
