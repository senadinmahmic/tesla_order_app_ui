import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class TabBarController extends GetView<CustomizationController> {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Material(
      color: AppColors.white,
      child: TabBar(
        controller: controller.tabController,
        indicatorColor: AppColors.red,
        dividerColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelStyle: TextStyle(
          color: AppColors.black,
          fontSize: screenSize.width < 400 ? 12 : 14,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: AppColors.grey600,
          fontSize: screenSize.width < 400 ? 12 : 14,
          fontWeight: FontWeight.w400,
        ),
        tabs: [
          _customTab('Car'),
          _customTab('Exterior'),
          _customTab('Interior'),
          _customTab('Autopilot'),
        ],
        onTap: (index) {
          controller.currentTabPage.value = index;
          index == 1 ? controller.carColorPrice.value = 2000 : null;
          index == 2
              ? controller.carInteriorPrice.value =
                  carModels[controller.index.value]
                      .interiorColorInfo[controller.selectedInterior.value]!
                      .price
              : null;
        },
      ),
    );
  }

  Widget _customTab(String text) {
    return Tab(
      child: Align(
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}
