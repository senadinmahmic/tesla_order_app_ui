import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/landing/controllers/landing_controller.dart';

class CurrentCarIndicator extends GetView<LandingController> {
  const CurrentCarIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final currentPage = controller.currentPage.value;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            carModels.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: currentPage == index ? 18 : 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color:
                    currentPage == index ? AppColors.white : AppColors.grey600,
              ),
            ),
          ),
        );
      },
    );
  }
}
