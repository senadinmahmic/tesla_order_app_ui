import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class SelectInteriorTabView extends GetView<CustomizationController> {
  const SelectInteriorTabView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background1,
      body: SizedBox(
        height: screenSize.height * 0.5,
        child: ClipRRect(
          child: OverflowBox(
            maxWidth: screenSize.width + 70,
            child: Transform.translate(
              offset: const Offset(-25, 0),
              child: Image.asset(
                'assets/images/all_black_interior.jpg',
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
