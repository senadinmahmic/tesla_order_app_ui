import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/modules/landing/bindings/landing_bindings.dart';

import 'package:tesla_order_app_ui/routes/app_routes.dart';
import 'package:tesla_order_app_ui/routes/app_pages.dart';

void main() {
  runApp(
    const TeslaOrderApp(),
  );
}

class TeslaOrderApp extends StatelessWidget {
  const TeslaOrderApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Play',
        ),
        title: 'Autoskola quiz app',
        getPages: AppPages.routes,
        initialRoute: Routes.LANDING,
        initialBinding: LandingBindings(),
      ),
    );
  }
}
