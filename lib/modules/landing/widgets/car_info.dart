import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/landing/controllers/landing_controller.dart';

class CarInfo extends GetView<LandingController> {
  const CarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${carModels[controller.currentPage.value].range} mi',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Range (EPA est.)',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  width: 1,
                  color: AppColors.grey800,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        carModels[controller.currentPage.value].motortype,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        carModels[controller.currentPage.value].motors,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Acceleration: ',
                  style: TextStyle(
                    color: AppColors.grey700,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextSpan(
                    text:
                        '0-60 mph in ${carModels[controller.currentPage.value].accelerationSpeed}s',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Obx(
            () => Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Top Speed: ',
                    style: TextStyle(
                      color: AppColors.grey700,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text:
                        'up to ${carModels[controller.currentPage.value].topSpeed} mph',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
