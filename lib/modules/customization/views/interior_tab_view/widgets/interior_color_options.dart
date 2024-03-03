import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class InteriorColorOptions extends GetView<CustomizationController> {
  final InteriorColors interiorColors;
  final String price;

  const InteriorColorOptions({
    required this.interiorColors,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Obx(
      () {
        final selectedInterior = controller.selectedInterior.value;
        return GestureDetector(
          onTap: () {
            controller.selectedInterior.value = interiorColors;
            interiorColors == InteriorColors.Black
                ? controller.selectedInterior.value = InteriorColors.Black
                : controller.selectedInterior.value = InteriorColors.White;
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: interiorColors == selectedInterior
                        ? AppColors.black
                        : AppColors.grey500,
                    fontSize: interiorColors == selectedInterior
                        ? (screenSize.width < 400 ? 22 : 24)
                        : (screenSize.width < 400 ? 20 : 22),
                  ),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    interiorColors.toString().split('.').last,
                  ),
                ),
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: interiorColors == selectedInterior
                        ? AppColors.red
                        : AppColors.grey400,
                    fontSize: interiorColors == selectedInterior
                        ? (screenSize.width < 400 ? 18 : 20)
                        : (screenSize.width < 400 ? 16 : 18),
                  ),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    '\$$price',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
