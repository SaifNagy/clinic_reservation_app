import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi , Saif!',
              style: TextStyles.font18DarkBlueExtraBold,
            ),
            Text(
              'How are you today?',
              style: TextStyles.font12GreyRegular.copyWith(height: 1.7),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.moreLighterGrey,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        )
      ],
    );
  }
}
