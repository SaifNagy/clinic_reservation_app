import 'package:clinic_reservation_app/core/networking/api_service.dart';
import 'package:clinic_reservation_app/core/networking/dio_factory.dart';
import 'package:clinic_reservation_app/features/home/data/apis/home_api_service.dart';
import 'package:clinic_reservation_app/features/home/data/repos/home_repo.dart';
import 'package:clinic_reservation_app/features/home/logic/home_cubit.dart';
import 'package:clinic_reservation_app/features/login/data/repos/login_repo.dart';
import 'package:clinic_reservation_app/features/login/logic/cubit/login_cubit.dart';
import 'package:clinic_reservation_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:clinic_reservation_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //sign-up
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo(getIt()));
  getIt.registerFactory<SignUpCubit>(()=>SignUpCubit(getIt()));
  //home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(()=>HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(()=>HomeCubit(getIt()));
}
