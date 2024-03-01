import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';

class SelectCarColorView extends GetView<CustomizationController> {
  const SelectCarColorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.red.withOpacity(
            0.4,
          ),
        ),
      ],
    );
  }
}
