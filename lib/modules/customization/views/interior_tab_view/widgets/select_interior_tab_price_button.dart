import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_price_button.dart';

class SelectInteriorTabPriceButton extends GetView<CustomizationController> {
  const SelectInteriorTabPriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BottomPriceButton(
          onPressed: () {
            controller.currentTabPage.value = 3;
            controller.tabController.animateTo(3);
          },
        ),
      ),
    );
  }
}
