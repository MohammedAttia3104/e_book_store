import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/features/book/book_screen.dart';
import 'package:e_book_store/features/home/presentation/controllers/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/home_screen.dart';
import '../di/service_locator.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.bookScreen:
        return MaterialPageRoute(
          builder: (_) => const BookScreen(),
        );
      default:
        return null;
    }
  }
}
