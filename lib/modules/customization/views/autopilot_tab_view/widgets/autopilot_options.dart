import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class AutopilotOptions extends GetView<CustomizationController> {
  final AutopilotType autopilotType;
  final String price;

  const AutopilotOptions({
    required this.autopilotType,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Obx(
      () {
        final selectedAutopilot = controller.selectedAutopilot.value;
        return GestureDetector(
          onTap: () {
            controller.selectedAutopilot.value = autopilotType;
            controller.carAutopilotPrice.value =
                carModels[controller.index.value]
                    .autopilot[autopilotType]!
                    .price;
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: autopilotType == selectedAutopilot
                        ? AppColors.black
                        : AppColors.grey500,
                    fontSize: autopilotType == selectedAutopilot
                        ? (screenSize.width < 400 ? 22 : 24)
                        : (screenSize.width < 400 ? 20 : 22),
                  ),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    autopilotType.toString().split('.').last.replaceAll(
                          '_',
                          ' ',
                        ),
                  ),
                ),
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: autopilotType == selectedAutopilot
                        ? AppColors.red
                        : AppColors.grey400,
                    fontSize: autopilotType == selectedAutopilot
                        ? (screenSize.width < 400 ? 18 : 20)
                        : (screenSize.width < 400 ? 16 : 18),
                  ),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    price == 0.toString() ? 'Included' : '\$$price',
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
