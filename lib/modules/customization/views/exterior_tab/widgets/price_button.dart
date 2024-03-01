import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_price_button.dart';

class PriceButton extends GetView<CustomizationController> {
  const PriceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomPriceButton(
          onPressed: () {
            controller.currentTabPage.value = 2;
            controller.tabController.animateTo(2);
          },
        ),
      ),
    );
  }
}
