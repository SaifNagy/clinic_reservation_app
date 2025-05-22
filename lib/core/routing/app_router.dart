import 'package:clinic_reservation_app/core/di/dependency_injection.dart';
import 'package:clinic_reservation_app/core/routing/app_routes.dart';
import 'package:clinic_reservation_app/features/home/logic/home_cubit.dart';
import 'package:clinic_reservation_app/features/home/ui/home_screen.dart';
import 'package:clinic_reservation_app/features/login/logic/cubit/login_cubit.dart';
import 'package:clinic_reservation_app/features/login/ui/login_screen.dart';
import 'package:clinic_reservation_app/features/onboarding/onboarding_screen.dart';
import 'package:clinic_reservation_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:clinic_reservation_app/features/sign_up/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case AppRoutes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          ),
        );
      case AppRoutes.signup:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: const SignupScreen(),
          ),
        );
      case AppRoutes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      default:
        return null;
    }
  }
}
