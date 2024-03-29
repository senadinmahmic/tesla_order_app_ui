import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_price_button.dart';

class CarTabInfo extends GetView<CustomizationController> {
  const CarTabInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double horizontalPadding = 32.0;
    final index = controller.index.value;
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Obx(
                          () => Text(
                            '${controller.selectedModelType.value == ModelType.Performance ? carModels[index].performanceModel.accelerationSpeed : carModels[index].longRangeModel.accelerationSpeed}s',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: screenSize.height < 800 ? 22 : 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          '0-60 mph',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: screenSize.height < 800 ? 12 : 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 1,
                    color: AppColors.grey800,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Obx(
                          () => Text(
                            '${controller.selectedModelType.value == ModelType.Performance ? carModels[index].performanceModel.topSpeed : carModels[index].longRangeModel.topSpeed}mph',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: screenSize.height < 800 ? 22 : 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          'Top Speed',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: screenSize.height < 800 ? 12 : 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: horizontalPadding,
                  right: horizontalPadding,
                  top: 20,
                  bottom: 90,
                ),
                child: SingleChildScrollView(
                  child: Text(
                    carModels[index].description,
                  ),
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BottomPriceButton(
                  onPressed: () {
                    controller.currentTabPage.value = 1;
                    controller.tabController.animateTo(1);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
