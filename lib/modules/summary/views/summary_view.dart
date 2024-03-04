import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/summary/controllers/summary_controller.dart';
import 'package:tesla_order_app_ui/modules/summary/views/widgets/bottom_container_content.dart';

class SummaryView extends GetView<SummaryController> {
  const SummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height * 0.6,
            child: Image.asset(
              'assets/images/summary_view_image.png',
              fit: BoxFit.cover,
            ),
          ),
          AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Image.asset(
              'assets/images/tesla_logo.png',
              height: 100,
              color: AppColors.black,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: screenSize.height * 0.45,
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const BottomContainerContent(),
            ),
          ),
        ],
      ),
    );
  }
}
