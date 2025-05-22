import 'package:cached_network_image/cached_network_image.dart';
import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsItem;
  const DoctorsListViewItem({super.key, required this.doctorsItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(imageUrl: 
              'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
              width: 110.w,
              height: 120.h,
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctorsItem?.name ?? 'Name',
                style: TextStyles.font18DarkBlueBold,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctorsItem?.degree} | ${doctorsItem?.phone}',
                style: TextStyles.font12GrayMedium,
              ),
              verticalSpace(5),
              Text(
                doctorsItem?.email ?? 'Email',
                style: TextStyles.font12GrayMedium,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
