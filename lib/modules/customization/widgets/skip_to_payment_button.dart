import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/routes/app_routes.dart';

class SkipToPaymentButton extends GetView<CustomizationController> {
  const SkipToPaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 23,
          right: 20,
        ),
        child: GestureDetector(
          onTap: () {
            controller.carColorPrice.value = 2000;
            controller.carInteriorPrice.value =
                carModels[controller.index.value]
                    .interiorColorInfo[controller.selectedInterior.value]!
                    .price;
            controller.carAutopilotPrice.value =
                carModels[controller.index.value]
                    .autopilot[controller.selectedAutopilot.value]!
                    .price;
            controller.carInteriorPrice.value =
                carModels[controller.index.value]
                    .interiorColorInfo[controller.selectedInterior.value]!
                    .price;
            Get.toNamed(
              Routes.SUMMARY,
              arguments: {
                'index': controller.index.value,
                'selectedModelType': controller.selectedModelType.value,
                'selectedCarColor': controller.selectedCarColor.value,
                'selectedInterior': controller.selectedInterior.value,
                'selectedAutopilot': controller.selectedAutopilot.value,
                'totalPrice': controller.totalPrice.value,
              },
            );
          },
          child: Container(
            width: 120,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.black,
            ),
            alignment: Alignment.center,
            child: Text(
              'Skip to payment',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
