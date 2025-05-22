import 'package:clinic_reservation_app/core/helpers/spacing.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  // final Doctors? doctorsModel;
  const DoctorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
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
                      'Name',
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(5),
                    Text(
                      'degree | 13213213213',
                      style: TextStyles.font12GrayMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      'Email',
                      style: TextStyles.font12GrayMedium,
                    ),
                  ],
                ))
              ],
            ),
          );
        },
      ),
    );
  }
}
// Container(
//       margin: EdgeInsets.only(bottom: 16.h),
//       child: Row(
//         children: [
//           CachedNetworkImage(
//             imageUrl:
//                 "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
//             progressIndicatorBuilder: (context, url, downloadProgress) {
//               return Shimmer.fromColors(
//                 baseColor: AppColors.lightGrey,
//                 highlightColor: Colors.white,
//                 child: Container(
//                   width: 110.w,
//                   height: 120.h,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     borderRadius: BorderRadius.circular(12.0),
//                     color: Colors.white,
//                   ),
//                 ),
//               );
//             },
          
//             imageBuilder: (context, imageProvider) => Container(
//               width: 110.w,
//               height: 120.h,
//               decoration: BoxDecoration(
//                 shape: BoxShape.rectangle,
//                 borderRadius: BorderRadius.circular(12.0),
//                 image: DecorationImage(
//                   image: imageProvider,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           horizontalSpace(16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Name',
//                   style: TextStyles.font18DarkBlueBold,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 verticalSpace(5),
//                 Text(
//                   'degree | 13213213213',
//                   style: TextStyles.font12GrayMedium,
//                 ),
//                 verticalSpace(5),
//                 Text(
//                   'Email',
//                   style: TextStyles.font12GrayMedium,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );