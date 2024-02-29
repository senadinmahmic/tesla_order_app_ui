import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class SelectModelType extends GetView<CustomizationController> {
  const SelectModelType({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 40),
              child: Text(
                'Select Model Type',
                style: TextStyle(
                  color: AppColors.grey700,
                  fontSize: screenSize.width < 400 ? 18 : 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 35),
            child: Image.asset(
              carModels[controller.index.value].imagesByColor.values.first,
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.selectedModelType.value =
                        carModels[controller.index.value].performanceModel.type;
                  },
                  child: _modelType(
                    carModels[controller.index.value].performanceModel.type,
                    carModels[controller.index.value].performanceModel.price,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.selectedModelType.value =
                        carModels[controller.index.value].longRangeModel.type;
                  },
                  child: _modelType(
                    carModels[controller.index.value].longRangeModel.type,
                    carModels[controller.index.value].longRangeModel.price,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _modelType(ModelType modelType, String price) {
    Size screenSize = MediaQuery.of(Get.context!).size;
    return Obx(
      () {
        final selectedType = controller.selectedModelType.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              modelType.toString().split('.').last,
              style: TextStyle(
                color: modelType == selectedType
                    ? AppColors.black
                    : AppColors.grey500,
                fontSize: screenSize.width < 400 ? 22 : 24,
              ),
            ),
            Text(
              '\$$price',
              style: TextStyle(
                color: modelType == selectedType
                    ? AppColors.red
                    : AppColors.grey400,
                fontSize: screenSize.width < 400 ? 20 : 22,
              ),
            ),
          ],
        );
      },
    );
  }
}
