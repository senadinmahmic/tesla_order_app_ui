import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/modules/landing/widgets/landing_view_button.dart';
import 'package:tesla_order_app_ui/routes/app_routes.dart';

import '../controllers/landing_controller.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/landing/widgets/car_info.dart';
import 'package:tesla_order_app_ui/modules/landing/widgets/car_models_list.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.black,
        title: Image.asset(
          'assets/images/tesla_logo.png',
          height: 100,
          color: AppColors.grey600,
        ),
      ),
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.3),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 15,
                      blurRadius: 70,
                      color: Colors.blueAccent.withOpacity(0.2),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Container(
                height: screenSize.height < 800 ? 55 : 65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 15,
                      blurRadius: 30,
                      color: Colors.white12,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/tesla_logo_icon.png',
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 20),
              const CarModelsList(),
              SizedBox(height: screenSize.height < 800 ? 20 : 40),
              const CarInfo(),
              const Spacer(),
              Padding(
                padding:
                    EdgeInsets.only(bottom: screenSize.height < 800 ? 12 : 20),
                child: LandinViewButton(
                  onPressed: () {
                    Get.toNamed(
                      Routes.CUSTOMIZATION,
                      arguments: {
                        'currentPageIndex': controller.currentPage.value,
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
