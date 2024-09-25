import 'package:bloc/bloc.dart';
import 'package:e_book_store/core/di/service_locator.dart';
import 'package:e_book_store/e_book_store.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/utils/my_bloc_observer.dart';

void main(){
  setUpServiceLocator();
  Bloc.observer = MyBlocObserver();

  runApp(EBookStore(appRouter: AppRouter()));
}
