import 'package:dio/dio.dart';
import 'package:e_book_store/core/networking/dio_factory.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../../features/home/presentation/controllers/home_cubit.dart';
import '../theming/controllers/app_theme_cubit.dart';

final GetIt sl = GetIt.instance;

void setUpServiceLocator() {
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<Dio>(() => dio);
  //Home
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(sl()));
  sl.registerFactory<HomeCubit>(() => HomeCubit(sl()));

  //theme cubit
  sl.registerFactory<AppThemeCubit>(() => AppThemeCubit());
}
