import 'package:e_book_store/core/routing/app_router.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/service_locator.dart';
import 'features/home/presentation/controllers/home_cubit.dart';

class EBookStore extends StatelessWidget {
  final AppRouter appRouter;

  const EBookStore({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => sl<HomeCubit>()
          ..getFreeBooks("computer science", "free-ebooks"),      child: MaterialApp(
        initialRoute: Routes.homeScreen,
        onGenerateRoute: appRouter.generateRoute,
        navigatorObservers: [NavigatorObserver()],
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
