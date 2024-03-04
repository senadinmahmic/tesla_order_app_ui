import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/summary/controllers/summary_controller.dart';

class SummaryView extends GetView<SummaryController> {
  const SummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Image.asset(
          'assets/images/tesla_logo.png',
          height: 100,
          color: AppColors.black,
        ),
      ),
      body: const Center(
        child: Icon(
          Icons.account_balance_rounded,
        ),
      ),
    );
  }
}
