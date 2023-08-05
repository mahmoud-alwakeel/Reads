import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:reads/features/home/data/repos/home_repo_implementation.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupSingelton() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementation>(HomeRepoImplementation(
    getIt.get<ApiService>()
  ));
}