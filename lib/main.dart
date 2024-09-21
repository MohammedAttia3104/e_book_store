import 'package:e_book_store/core/di/service_locator.dart';
import 'package:e_book_store/e_book_store.dart';
import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';

void main(){
  setUpServiceLocator();
  runApp(EBookStore(appRouter: AppRouter()));
}
