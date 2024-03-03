import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/data/carData/car_data.dart';

class CustomizationController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final index = 0.obs;
  final currentTabPage = 0.obs;

  final initialCarPrice = 0.obs;
  final carColorPrice = 0.obs;
  final carInteriorPrice = 0.obs;
  final carAutopilotPrice = 0.obs;
  final totalPrice = 0.obs;

  late TabController tabController;

  final selectedCarColor = CarColors.Black.obs;
  final selectedModelType = ModelType.Performance.obs;
  final selectedInterior = InteriorColors.Black.obs;

  @override
  void onInit() {
    index.value = Get.arguments['currentPageIndex'];

    ever(initialCarPrice, (_) => updateTotalPrice());
    ever(carColorPrice, (_) => updateTotalPrice());
    ever(carInteriorPrice, (_) => updateTotalPrice());
    ever(carAutopilotPrice, (_) => updateTotalPrice());
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(() {
      // Calculate the new page index based on the animation value
      currentTabPage.value == 1 ? carColorPrice.value = 2000 : null;
      int newPageIndex = (tabController.animation!.value).round();

      if (currentTabPage.value != newPageIndex) {
        currentTabPage.value = newPageIndex;
      }
    });
    initialCarPrice.value = carModels[index.value].performanceModel.price;
    super.onInit();
  }

  void updateTotalPrice() {
    totalPrice.value = initialCarPrice.value +
        carColorPrice.value +
        carInteriorPrice.value +
        carAutopilotPrice.value;
  }

  @override
  void onClose() {
    tabController.dispose();
    tabController.removeListener(() {
      currentTabPage.value = tabController.index;
    });
    super.onClose();
  }
}
