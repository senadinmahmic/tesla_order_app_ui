import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/tabbar_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/select_model_type.dart';

class CustomizationView extends GetView<CustomizationController> {
  const CustomizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: controller.currentPage.value,
      child: Scaffold(
        backgroundColor: AppColors.background1,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.white,
          title: Image.asset(
            'assets/images/tesla_logo.png',
            height: 100,
            color: AppColors.black,
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: TabBarController(),
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            SelectModelType(),
            SizedBox(),
            SizedBox(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
