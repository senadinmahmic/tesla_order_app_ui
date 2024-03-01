import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class BottomPriceButton extends GetView<CustomizationController> {
  final VoidCallback onPressed;
  const BottomPriceButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Total: \$${controller.totalPrice.value}',
            style: TextStyle(
              color: AppColors.black,
              fontSize: screenSize.width < 400 ? 20 : 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          OutlinedButton(
            onPressed: onPressed,
            style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(
                Size(
                  screenSize.width * 0.35,
                  45,
                ),
              ),
              foregroundColor: MaterialStatePropertyAll(
                AppColors.black,
              ),
              side: MaterialStatePropertyAll(
                BorderSide(
                  color: AppColors.red!,
                  width: 2,
                ),
              ),
            ),
            child: const Text(
              'NEXT',
            ),
          ),
        ],
      ),
    );
  }
}
