import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class ColorCircle extends GetView<CustomizationController> {
  final InteriorColors interiorColor;
  final VoidCallback onTap;

  const ColorCircle({
    required this.interiorColor,
    required this.onTap,
    super.key,
  });

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
              height:
                  controller.selectedInterior.value == interiorColor ? 50 : 40,
              width:
                  controller.selectedInterior.value == interiorColor ? 50 : 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.red,
              ),
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: controller.selectedInterior.value == interiorColor
                      ? 50
                      : 40,
                  width: controller.selectedInterior.value == interiorColor
                      ? 50
                      : 40,
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
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              getInteriorColor(interiorColor),
                              getInteriorColor(interiorColor).withOpacity(0.5),
                            ],
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
      ),
    );
  }

  Color getInteriorColor(InteriorColors color) {
    switch (color) {
      case InteriorColors.Black:
        return Colors.black;
      case InteriorColors.White:
        return Colors.white;
      default:
        return Colors.transparent;
    }
  }
}
