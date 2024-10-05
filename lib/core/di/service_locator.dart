import 'package:dio/dio.dart';
import 'package:e_book_store/core/networking/dio_factory.dart';
import 'package:e_book_store/features/book/data/data_source/book_remote_data_source.dart';
import 'package:e_book_store/features/book/data/repository/book_details_repository.dart';
import 'package:e_book_store/features/explore/data/data_sources/explore_remote_data_source.dart';
import 'package:e_book_store/features/explore/data/repositories/explore_repository.dart';
import 'package:e_book_store/features/explore/presentation/controllers/explore_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/book/presentation/controllers/book_cubit.dart';
import '../../features/home/data/data_sources/home_remote_data_source.dart';
import '../../features/home/data/repositories/home_repository.dart';
import '../../features/home/presentation/controllers/home_cubit.dart';
import '../../features/search/data/data_source/search_remote_data_source.dart';
import '../../features/search/data/repository/search_repository.dart';
import '../../features/search/presentation/controllers/search_cubit.dart';
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

  ///BookDetails
  sl.registerLazySingleton<BookRemoteDataSource>(
    () => BookRemoteDataSource(sl()),
  );
  sl.registerLazySingleton<BookDetailsRepository>(
    () => BookDetailsRepositoryImpl(bookRemoteDataSource: sl()),
  );

  sl.registerFactory<BookCubit>(() => BookCubit(sl()));

  //Explore
  sl.registerLazySingleton<ExploreRemoteDataSource>(
    () => ExploreRemoteDataSource(sl()),
  );

  sl.registerLazySingleton<ExploreRepository>(
    () => ExploreRepositoryImpl(exploreRemoteDataSource: sl()),
  );

  sl.registerFactory<ExploreCubit>(() => ExploreCubit(sl()));

//search
  sl.registerLazySingleton<SearchRemoteDataSource>(
    () => SearchRemoteDataSource(sl()),
  );

  sl.registerLazySingleton<SearchRepository>(
    () => SearchRepositoryImpl(sl()),
  );

  sl.registerFactory<SearchCubit>(() => SearchCubit(sl()));
}
