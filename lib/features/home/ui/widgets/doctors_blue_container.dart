import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(image: AssetImage('assets/images/home_blue_pattern.png'), fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: TextStyles.font18WhiteMeduim.copyWith(height: 1.5),
                  textAlign: TextAlign.start,
                ),
                verticalSpace(7),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                        // padding: EdgeInsets.symmetric(
                        //   horizontal: 24.w,
                        //   vertical: 10.h,
                        // ),
                      ),
                      child: Text(
                        'Find Nearby',
                        style: TextStyles.font13BlueRegular,
                      )),
                )
              ],
            ),
          ),
          Positioned(
              right: 16,
              top: 0,
              child: Image.asset(
                'assets/images/doctor.png',
                height: 195.h,
              ))
        ],
      ),
    );
  }
}
