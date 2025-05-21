// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clinic_reservation_app/core/networking/api_error_handler.dart';
import 'package:clinic_reservation_app/core/networking/api_result.dart';
import 'package:clinic_reservation_app/core/networking/api_service.dart';
import 'package:clinic_reservation_app/features/sign_up/data/modles/sign_up_request_body.dart';
import 'package:clinic_reservation_app/features/sign_up/data/modles/sign_up_response_body.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResults<SignUpResponse>> signup(SignUpRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResults.success(response);
    } catch (e) {
      return ApiResults.failure(ErrorHandler.handle(e));
    }
  }
}
