// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clinic_reservation_app/core/networking/api_error_handler.dart';
import 'package:clinic_reservation_app/core/networking/api_result.dart';
import 'package:clinic_reservation_app/features/home/data/apis/home_api_service.dart';
import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  HomeRepo(
    this._homeApiService,
  );

  Future<ApiResults<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResults.success(response);
    } catch (error) {
      return ApiResults.failure(ErrorHandler.handle(error));
    }
  }
}
