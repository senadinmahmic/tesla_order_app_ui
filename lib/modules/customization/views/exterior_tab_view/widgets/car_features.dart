import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class CarFeatures extends GetView<CustomizationController> {
  const CarFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: carModels[controller.index.value].features.length,
        itemBuilder: (context, index) {
          String feature = carModels[controller.index.value].features[index];
          return SizedBox(
            height: 35,
            child: ListTile(
              leading: const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 22,
              ),
              title: Text(
                feature,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
