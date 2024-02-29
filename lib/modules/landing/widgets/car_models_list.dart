import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/landing/controllers/landing_controller.dart';

class CarModelsList extends GetView<LandingController> {
  const CarModelsList({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: screenSize.height < 800 ? 240 : 290,
          child: PageView.builder(
            controller: PageController(
              initialPage: 1,
            ),
            onPageChanged: (int page) {
              controller.currentPage.value = page;
            },
            scrollDirection: Axis.horizontal,
            itemCount: carModels.length,
            itemBuilder: (context, index) {
              return Center(
                child: Obx(
                  () {
                    final currentPage = controller.currentPage.value;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                          child: Text(
                            carModels[index].name,
                            style: TextStyle(
                              color: currentPage == index
                                  ? AppColors.white
                                  : AppColors.grey600,
                              fontSize: screenSize.height < 800
                                  ? (currentPage == index ? 26 : 18)
                                  : (currentPage == index ? 28 : 18),
                              fontWeight: currentPage == index
                                  ? FontWeight.w400
                                  : FontWeight.w200,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: screenSize.width < 400 ? 185 : 220,
                          width: double.infinity,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              carModels[index].image,
                              width: screenSize.width < 400 ? 240 : 300,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
