import 'package:get/get.dart';
import 'package:tesla_order_app_ui/modules/customization/bindings/customization_bindings.dart';
import 'package:tesla_order_app_ui/modules/customization/views/customization_view.dart';
import 'package:tesla_order_app_ui/modules/summary/bindings/summary_bindings.dart';
import 'package:tesla_order_app_ui/modules/summary/views/summary_view.dart';

import 'package:tesla_order_app_ui/routes/app_routes.dart';
import 'package:tesla_order_app_ui/modules/landing/bindings/landing_bindings.dart';
import 'package:tesla_order_app_ui/modules/landing/views/landing_view.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.LANDING,
      page: () => const LandingView(),
      binding: LandingBindings(),
    ),
    GetPage(
      name: Routes.CUSTOMIZATION,
      page: () => const CustomizationView(),
      binding: CustomizationBindings(),
    ),
    GetPage(
      name: Routes.SUMMARY,
      page: () => const SummaryView(),
      binding: SummaryBindings(),
    )
  ];
}
