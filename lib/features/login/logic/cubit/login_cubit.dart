import 'package:clinic_reservation_app/core/helpers/constants.dart';
import 'package:clinic_reservation_app/core/helpers/shared_pref_helpers.dart';
import 'package:clinic_reservation_app/core/networking/dio_factory.dart';
import 'package:clinic_reservation_app/features/login/data/models/login_request_body.dart';
import 'package:clinic_reservation_app/features/login/data/repos/login_repo.dart';
import 'package:clinic_reservation_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginRespnse) async {
      await saveUserToken(loginRespnse.userData?.token ?? '');

      emit(LoginState.success(loginRespnse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
