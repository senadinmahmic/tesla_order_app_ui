import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class ModelTypeOptions extends GetView<CustomizationController> {
  final ModelType modelType;
  final String price;

  const ModelTypeOptions({
    required this.modelType,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Obx(
      () {
        final selectedType = controller.selectedModelType.value;
        return GestureDetector(
          onTap: () {
            controller.selectedModelType.value = modelType;
            modelType == ModelType.Performance
                ? controller.initialCarPrice.value =
                    carModels[controller.index.value].performanceModel.price
                : controller.initialCarPrice.value =
                    carModels[controller.index.value].longRangeModel.price;
          },
          child: Container(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: modelType == selectedType
                        ? AppColors.black
                        : AppColors.grey500,
                    fontSize: modelType == selectedType
                        ? (screenSize.width < 400 ? 22 : 24)
                        : (screenSize.width < 400 ? 20 : 22),
                  ),
                  duration: const Duration(milliseconds: 100),
                  child: Text(
                    modelType.toString().split('.').last,
                  ),
                ),
                AnimatedDefaultTextStyle(
                  style: TextStyle(
                    color: modelType == selectedType
                        ? AppColors.red
                        : AppColors.grey400,
                    fontSize: modelType == selectedType
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
