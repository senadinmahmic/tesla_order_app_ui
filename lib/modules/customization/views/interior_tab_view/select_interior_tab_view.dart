import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class SelectInteriorTabView extends GetView<CustomizationController> {
  const SelectInteriorTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.check_circle,
        color: Colors.green,
        size: 22,
      ),
    );
  }
}
