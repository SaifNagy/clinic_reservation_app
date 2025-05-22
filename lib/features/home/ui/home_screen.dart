import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_speciality_list_view.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(
          20,
          16,
          20,
          28,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            const DoctorsBlueContainer(),
            verticalSpace(28.h),
            const DoctorsSpecialitySeeAll(),
            verticalSpace(18.h),
            const DoctorsSpecialityListView(),
            verticalSpace(8.h),
            const DoctorsListView(),
          ],
        ),
      )),
    );
  }
}
