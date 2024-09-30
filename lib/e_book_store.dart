import 'package:e_book_store/core/layout/app_layout.dart';
import 'package:e_book_store/core/layout/controllers/bottom_nav_bar_cubit.dart';
import 'package:e_book_store/core/routing/app_router.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:e_book_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/service_locator.dart';
import 'core/enums/theme_states.dart';
import 'core/theming/app_themes.dart';
import 'features/favorite/presentation/controllers/favorite_cubit.dart';
import 'features/home/data/repositories/home_repository.dart';
import 'features/home/presentation/controllers/home_cubit.dart';

class EBookStore extends StatelessWidget {
  final AppRouter appRouter;

  const EBookStore({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppThemeCubit>(
          create: (_) =>
              sl<AppThemeCubit>()..changeAppTheme(ThemeState.initial),
        ),
        BlocProvider<BottomNavBarCubit>(
          create: (_) => BottomNavBarCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (_) => sl<HomeCubit>()
            ..getRecentlyAddedBooks(
              RecentlyAddedBooksParameters(
                subject: 'subject:' "\"Computers\"",
                startIndex: 0,
                maxResults: 20,
                orderBy: 'newest',
              ),
            ),
        ),
        BlocProvider<FavoriteCubit>(
          create: (context) => FavoriteCubit()..getFavoriteBooks(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(428, 926),
        child: BlocBuilder<AppThemeCubit, AppThemeState>(
          builder: (context, state) {
            ThemeData theme;
            if (state is AppThemeLightState) {
              theme = lightTheme;
            } else if (state is AppThemeDarkState) {
              theme = darkTheme;
            } else {
              theme = lightTheme;
            }
            return MaterialApp(
              initialRoute: Routes.initial,
              onGenerateRoute: appRouter.generateRoute,
              navigatorObservers: [NavigatorObserver()],
              debugShowCheckedModeBanner: false,
              theme: theme,
              home: const AppLayout(),
            );
          },
        ),
      ),
    );
  }
}
