import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/views/interior_tab_view/widgets/interior_color_circle.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_price_button.dart';

class SelectInteriorTabBottomContent extends GetView<CustomizationController> {
  const SelectInteriorTabBottomContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final horizontalPadding = screenSize.width < 400 ? 26.0 : 32.0;
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 30,
                left: horizontalPadding,
                right: horizontalPadding,
              ),
              child: Text(
                'Select Interior',
                style: TextStyle(
                  color: AppColors.grey700,
                  fontSize: screenSize.width < 400 ? 18 : 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: InteriorColors.values.map(
                (color) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InteriorColorCircle(
                      interiorColor: color,
                      onTap: () {
                        controller.selectedInterior.value = color;
                      },
                    ),
                  );
                },
              ).toList(),
            ),
          ],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            child: BottomPriceButton(
              onPressed: () {
                controller.currentTabPage.value = 3;
                controller.tabController.animateTo(3);
              },
            ),
          ),
        )
      ],
    );
  }
}
