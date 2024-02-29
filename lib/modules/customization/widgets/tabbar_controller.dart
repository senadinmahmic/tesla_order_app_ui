import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class TabBarController extends GetView<CustomizationController> {
  const TabBarController({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: TabBar(
        indicatorColor: AppColors.red,
        labelColor: AppColors.black,
        tabs: const [
          Text(
            'Car',
          ),
          Text(
            'Exterior',
          ),
          Text(
            'Interior',
          ),
          Text(
            'Autopilot',
          ),
        ],
      ),
    );
  }
}
