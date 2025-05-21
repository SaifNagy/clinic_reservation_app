import 'package:clinic_reservation_app/core/networking/api_error_handler.dart';
import 'package:clinic_reservation_app/core/networking/api_result.dart';
import 'package:clinic_reservation_app/core/networking/api_service.dart';
import 'package:clinic_reservation_app/features/login/data/models/login_request_body.dart';
import 'package:clinic_reservation_app/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResults<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResults.success(response);
    } catch (e) {
      // return ApiResults.failure(e.toString());
      return ApiResults.failure(ErrorHandler.handle(e));
    }
  }
}
