import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DoctorsSpecialityListViewItem({super.key, required this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: AppColors.lightblue,
            child: SvgPicture.asset(
              'assets/svgs/general_speciality.svg',
              height: 40.w,
              width: 40.h,
            ),
          ),
          verticalSpace(16),
          Text(
            specializationsData?.name??'Specialization',
            style: TextStyles.font12DarkBlueRegular,
          )
        ],
      ),
    );
  }
}
