import 'package:e_book_store/core/routing/app_router.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class EBookStore extends StatelessWidget {
  final AppRouter appRouter;
  const EBookStore({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.homeScreen,
      onGenerateRoute: appRouter.generateRoute,
      navigatorObservers: [NavigatorObserver()],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
