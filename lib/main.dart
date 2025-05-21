import 'package:clinic_reservation_app/clinic_app.dart';
import 'package:clinic_reservation_app/core/di/dependency_injection.dart';
import 'package:clinic_reservation_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();  
  runApp( ClinicApp(appRouter: AppRouter()));
}
