
import 'package:clinic_reservation_app/core/networking/api_error_handler.dart';
import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {

  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsLoaded(SpecializationsResponseModel specializations_response_model) = SpecializationsLoaded;
  const factory HomeState.specializationserror(ErrorHandler message) = SpecializationsError;
}
