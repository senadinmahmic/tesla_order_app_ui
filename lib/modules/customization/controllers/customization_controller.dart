import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:video_player/video_player.dart';

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
  final selectedInterior = InteriorColors.Black_and_White.obs;
  final selectedAutopilot = AutopilotType.Full_Self_Driving.obs;

  late VideoPlayerController videoPlayerController;
  final isVideoMode = true.obs;

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
      currentTabPage.value == 2
          ? carInteriorPrice.value = carModels[index.value]
              .interiorColorInfo[selectedInterior.value]!
              .price
          : null;
      if (currentTabPage.value == 3) {
        carAutopilotPrice.value =
            carModels[index.value].autopilot[selectedAutopilot.value]!.price;
        carInteriorPrice.value = carModels[index.value]
            .interiorColorInfo[selectedInterior.value]!
            .price;
      }
      int newPageIndex = (tabController.animation!.value).round();

      if (currentTabPage.value != newPageIndex) {
        currentTabPage.value = newPageIndex;
      }
      if (currentTabPage.value == 3) {
        videoPlayerController.play();
      } else {
        videoPlayerController.pause();
      }
    });
    initialCarPrice.value = carModels[index.value].performanceModel.price;

    videoPlayerController = VideoPlayerController.asset(
        'assets/images/tesla_autopilot/tesla_selfdriving.mp4')
      ..initialize().then((_) {
        videoPlayerController.setLooping(true);
        videoPlayerController.play();
      });
    super.onInit();
  }

  void updateTotalPrice() {
    totalPrice.value = initialCarPrice.value +
        carColorPrice.value +
        carInteriorPrice.value +
        carAutopilotPrice.value;
  }

  void toggleDisplayMode() {
    if (selectedAutopilot.value == AutopilotType.Full_Self_Driving) {
      videoPlayerController.seekTo(Duration.zero);
      videoPlayerController.play();
    } else {
      videoPlayerController.pause();
    }
  }

  @override
  void onClose() {
    tabController.dispose();
    tabController.removeListener(() {
      currentTabPage.value = tabController.index;
    });
    videoPlayerController.dispose();
    super.onClose();
  }
}
