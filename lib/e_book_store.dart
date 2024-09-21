import 'package:e_book_store/core/routing/app_router.dart';
import 'package:e_book_store/core/routing/routes.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_cubit.dart';
import 'package:e_book_store/core/theming/controllers/app_theme_state.dart';
import 'package:e_book_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/service_locator.dart';
import 'core/enums/theme_state.dart';
import 'core/theming/app_themes.dart';
import 'features/home/presentation/controllers/home_cubit.dart';

class EBookStore extends StatelessWidget {
  final AppRouter appRouter;

  const EBookStore({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (_) =>
              sl<HomeCubit>()..getFreeBooks("computer science", "free-ebooks"),
        ),
        BlocProvider<AppThemeCubit>(
          create: (_) => AppThemeCubit()..changeAppTheme(ThemeState.initial),
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
              initialRoute: Routes.homeScreen,
              onGenerateRoute: appRouter.generateRoute,
              navigatorObservers: [NavigatorObserver()],
              debugShowCheckedModeBanner: false,
              theme: theme,
              home: const HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}
