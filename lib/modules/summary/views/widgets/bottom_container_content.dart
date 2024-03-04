import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/summary/controllers/summary_controller.dart';
import 'package:tesla_order_app_ui/modules/summary/views/widgets/color_container.dart';
import 'package:tesla_order_app_ui/modules/summary/views/widgets/enum_to_color_helper.dart';
import 'package:tesla_order_app_ui/modules/summary/views/widgets/summary_text.dart';
import 'package:tesla_order_app_ui/routes/app_routes.dart';

class BottomContainerContent extends GetView<SummaryController> {
  const BottomContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Your existing code...
        Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 85,
                  right: 32,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 15,
                                blurRadius: 70,
                                color: AppColors.white.withOpacity(0.2),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            carModels[controller.index.value].imagesByColor[
                                controller.selectedCarColor.value.name]!,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 15,
                                blurRadius: 70,
                                color: AppColors.black.withOpacity(0.5),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Summary',
                    style: TextStyle(
                      color: AppColors.grey400,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: SizedBox(
                      width: screenSize.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    carModels[controller.index.value].name,
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    ' ${controller.selectedModelType.value.name}',
                                    style: TextStyle(
                                      color: AppColors.grey400,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              SummaryText(
                                label: 'Color',
                                value: controller.selectedCarColor.value.name,
                                color: AppColors.grey400,
                              ),
                              const SizedBox(width: 10),
                              ColorContainer(
                                gradient1: getCarColor(
                                    controller.selectedCarColor.value),
                                gradient2: getCarColor(
                                        controller.selectedCarColor.value)
                                    .withOpacity(0.5),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              SummaryText(
                                label: 'Interior',
                                value: controller.selectedInterior.value.name
                                    .replaceAll(
                                  '_',
                                  ' ',
                                ),
                                color: AppColors.grey400,
                              ),
                              const SizedBox(width: 10),
                              ColorContainer(
                                gradient1: getInteriorColor(
                                    controller.selectedInterior.value),
                                gradient2: getInteriorColor(
                                        controller.selectedInterior.value)
                                    .withOpacity(0.5),
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          SummaryText(
                            label: 'Autopilot',
                            value: controller.selectedAutopilot.value.name
                                .replaceAll(
                              '_',
                              ' ',
                            ),
                            color: AppColors.grey400,
                          ),
                          const SizedBox(height: 10),
                          SummaryText(
                            label: 'Total Price',
                            value: '\$${controller.totalPrice.value}',
                            color: AppColors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.defaultDialog(
                              title: "Discard Changes",
                              middleText: "Do you want to discard changes?",
                              textConfirm: "Yes",
                              textCancel: "No",
                              onConfirm: () {
                                Get.offAllNamed(Routes.LANDING);
                              },
                              onCancel: () {},
                              titleStyle: TextStyle(color: AppColors.white),
                              middleTextStyle:
                                  TextStyle(color: AppColors.white),
                              cancelTextColor: AppColors.white,
                              backgroundColor: AppColors.black,
                              buttonColor: AppColors.red,
                              confirmTextColor: AppColors.white);
                        },
                        child: Text(
                          'Discard',
                          style: TextStyle(
                            color: AppColors.grey400,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          Get.dialog(
                            Center(
                              child: CircularProgressIndicator(
                                color: AppColors.red,
                              ),
                            ),
                            barrierDismissible: false,
                          );
                          Future.delayed(
                            const Duration(seconds: 2),
                            () {
                              Get.offAllNamed(
                                Routes.LANDING,
                              );
                            },
                          );
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll(
                            Size(
                              screenSize.width * 0.45,
                              45,
                            ),
                          ),
                          foregroundColor: MaterialStatePropertyAll(
                            AppColors.white,
                          ),
                          side: MaterialStatePropertyAll(
                            BorderSide(
                              color: AppColors.red!,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.apple_outlined,
                              size: 24,
                            ),
                            Text(
                              'Pay',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
