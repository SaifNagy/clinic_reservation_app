import 'package:clinic_reservation_app/clinic_app.dart';
import 'package:clinic_reservation_app/core/di/dependency_injection.dart';
import 'package:clinic_reservation_app/core/helpers/constants.dart';
import 'package:clinic_reservation_app/core/helpers/extentions.dart';
import 'package:clinic_reservation_app/core/helpers/shared_pref_helpers.dart';
import 'package:clinic_reservation_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

bool isLoggedInUser = false;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await checkIfLoggedInUser();
  setupGetIt();
  runApp(ClinicApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
