import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplementaion>(
      HomeRepoImplementaion(apiService: getIt.get<ApiService>(),),);
}
