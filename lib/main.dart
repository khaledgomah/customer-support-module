import 'package:customer_support_module/core/constants/app_theme.dart';
import 'package:customer_support_module/routes/app_pages.dart';
import 'package:customer_support_module/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    initialRoute: AppRoutes.customerService,
      getPages: AppPages.routes,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false
       // Default home view
    );
  }
}
