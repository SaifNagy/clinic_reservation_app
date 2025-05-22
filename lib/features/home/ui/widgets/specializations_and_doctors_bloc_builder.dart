import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/features/home/logic/home_cubit.dart';
import 'package:clinic_reservation_app/features/home/logic/home_state.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading || current is SpecializationsLoaded || current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsLoaded: (secializaitionsResponseModel) {
            var specializationsList = secializaitionsResponseModel.specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationserror: (message) {
            return const SizedBox();
          },
          orElse: () {
            return const SizedBox(
              height: 100,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const SizedBox();
  }

  Widget setupSuccess(specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationsData: specializationsList ?? [],
          ),
          verticalSpace(8.h),
          DoctorsListView(doctorlist: specializationsList?[1]?.doctorlist),
        ],
      ),
    );
  }
}
