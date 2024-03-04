import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/views/autopilot_tab_view/widgets/autopilot_options.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_price_button.dart';
import 'package:tesla_order_app_ui/routes/app_routes.dart';

class SelectAutoPilotBottomContent extends GetView<CustomizationController> {
  const SelectAutoPilotBottomContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double horizontalPadding = 32;
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: horizontalPadding,
                right: horizontalPadding,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select Interior',
                  style: TextStyle(
                    color: AppColors.grey700,
                    fontSize: screenSize.width < 400 ? 18 : 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: horizontalPadding,
                right: horizontalPadding + 20,
                top: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutopilotOptions(
                    autopilotType: AutopilotType.Full_Self_Driving,
                    price: carModels[controller.index.value]
                        .autopilot[AutopilotType.Full_Self_Driving]!
                        .price
                        .toString(),
                  ),
                  AutopilotOptions(
                    autopilotType: AutopilotType.Autopilot,
                    price: carModels[controller.index.value]
                        .autopilot[AutopilotType.Autopilot]!
                        .price
                        .toString(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: horizontalPadding,
                  right: horizontalPadding,
                  top: 15,
                  bottom: 90,
                ),
                child: Obx(
                  () => SingleChildScrollView(
                    child: Text(
                      carModels[controller.index.value]
                          .autopilot[controller.selectedAutopilot.value]!
                          .description,
                    ),
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
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: BottomPriceButton(
                  onPressed: () {
                    Get.toNamed(Routes.SUMMARY);
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
