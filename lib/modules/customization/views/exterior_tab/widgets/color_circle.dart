import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class ColorCircle extends GetView<CustomizationController> {
  final CarColors carColor;
  final VoidCallback onTap;

  const ColorCircle({
    required this.carColor,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Obx(
        () => SizedBox(
          width: 55,
          height: 55,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: controller.selectedColor.value == carColor ? 50 : 40,
              width: controller.selectedColor.value == carColor ? 50 : 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.red,
              ),
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: controller.selectedColor.value == carColor ? 50 : 40,
                  width: controller.selectedColor.value == carColor ? 50 : 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.grey400,
                  ),
                  child: Center(
                    child: Material(
                      elevation: 1,
                      shape: const CircleBorder(),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: getColorFromCarColor(carColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color getColorFromCarColor(CarColors carColor) {
    switch (carColor) {
      case CarColors.Black:
        return Colors.black;
      case CarColors.White:
        return Colors.white;
      case CarColors.Red:
        return Colors.red;
      case CarColors.Blue:
        return Colors.blue;
      case CarColors.Grey:
        return Colors.grey;
      default:
        return Colors.black;
    }
  }
}
