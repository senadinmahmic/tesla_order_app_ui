import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/summary/controllers/summary_controller.dart';
import 'package:tesla_order_app_ui/modules/summary/views/widgets/summary_text.dart';

class BottomContainerContent extends GetView<SummaryController> {
  const BottomContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Your existing code...
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Summary',
                style: TextStyle(
                  color: AppColors.grey400,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SizedBox(
                  width: screenSize.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        carModels[controller.index.value].name,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SummaryText(
                        label: 'Color',
                        value: controller.selectedCarColor.value.name,
                        color: AppColors.grey400,
                      ),
                      const SizedBox(height: 10),
                      SummaryText(
                        label: 'Interior',
                        value:
                            controller.selectedInterior.value.name.replaceAll(
                          '_',
                          ' ',
                        ),
                        color: AppColors.grey400,
                      ),
                      const SizedBox(height: 10),
                      SummaryText(
                        label: 'Autopilot',
                        value:
                            controller.selectedAutopilot.value.name.replaceAll(
                          '_',
                          ' ',
                        ),
                        color: AppColors.grey400,
                      ),
                      const SizedBox(height: 10),
                      SummaryText(
                        label: 'Total Price',
                        value: '\$${controller.totalPrice.value}',
                        color: AppColors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
