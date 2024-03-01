import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class BottomContainer extends GetView<CustomizationController> {
  final Widget child;

  const BottomContainer({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: screenSize.width,
        height: controller.currentTabPage.value == 0
            ? (screenSize.height < 800 ? 280 : 355)
            : controller.currentTabPage.value == 1
                ? 95
                : screenSize.height * 0.4,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: child,
      ),
    );
  }
}
