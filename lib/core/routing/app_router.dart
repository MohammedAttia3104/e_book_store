import 'package:e_book_store/core/layout/app_layout.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/features/book/book_screen.dart';
import 'package:e_book_store/features/book/presentation/controllers/book_cubit.dart';
import 'package:e_book_store/features/category/presentation/category_screen.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/home_screen.dart';
import '../di/service_locator.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => const AppLayout(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.bookScreen:
        if (arguments is String) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => sl<BookCubit>()..getBookDetails(arguments),
              child: const BookScreen(),
            ),
          );
        }

      case Routes.categoryScreen:
        if (arguments is String) {
          return MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => sl<BookCubit>()
                ..showCategoriesFromBook('subject:"$arguments"'),
              child: CategoryScreen(
                categoryTitle: arguments,
              ),
            ),
          );
        }

      default:
        return null;
    }
    return null;
  }
}
