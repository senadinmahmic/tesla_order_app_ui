import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/tabbar_controller.dart';

class CustomizationView extends GetView<CustomizationController> {
  const CustomizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Image.asset(
          'assets/images/tesla_logo.png',
          height: 100,
          color: AppColors.black,
        ),
      ),
      body: Column(
        children: [
          const TabBarController(),
          Image.asset(
            carModels[controller.index.value].imagesByColor['Black']!,
          ),
        ],
      ),
    );
  }
}
