import 'package:clinic_reservation_app/features/sign_up/data/modles/sign_up_request_body.dart';
import 'package:clinic_reservation_app/features/sign_up/data/modles/sign_up_response_body.dart';
import 'package:clinic_reservation_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:clinic_reservation_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.signupLoading());
    final response = await _signUpRepo.signup(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0));
    response.when(success: (signUpResponse) {
      emit(SignUpState.signupSuccess(signUpResponse));
    }, failure: (error) {
      emit(SignUpState.signupError(error: error.apiErrorModel.message ?? ''));
    });
  }
}
