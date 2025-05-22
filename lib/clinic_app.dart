import 'package:clinic_reservation_app/core/routing/app_router.dart';
import 'package:clinic_reservation_app/core/routing/app_routes.dart';
import 'package:clinic_reservation_app/core/theming/app_colors.dart';
import 'package:clinic_reservation_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClinicApp extends StatelessWidget {
  final AppRouter appRouter;
  const ClinicApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clinic App',
        theme: ThemeData(primaryColor: AppColors.mainBlue, useMaterial3: false),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: isLoggedInUser ? AppRoutes.homeScreen : AppRoutes.onBoardingScreen,
      ),
    );
  }
}
