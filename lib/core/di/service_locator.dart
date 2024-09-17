import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../../features/home/presentation/controllers/home_cubit.dart';

final GetIt sl = GetIt.instance;

void setUpServiceLocator() {
  Dio dio = Dio();
  sl.registerLazySingleton<Dio>(() => dio);
  //Home
  sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(sl()));
  sl.registerLazySingleton<HomeCubit>(() => HomeCubit(sl()));
}
