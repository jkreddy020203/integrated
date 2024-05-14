import 'package:flutter/material.dart';
import 'package:merchant_dashboard/routes/app_routes.dart';
import 'package:merchant_dashboard/utils/preference_utils.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await PreferenceUtils().init();
  runApp(
    MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.router,
    ),
  );
}
