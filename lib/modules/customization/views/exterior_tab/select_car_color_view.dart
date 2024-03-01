import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';
import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab/widgets/car_features.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab/widgets/color_circle.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab/widgets/colors_from_string.dart';

class SelectCarColorView extends GetView<CustomizationController> {
  const SelectCarColorView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final horizontalPadding = screenSize.width < 400 ? 26.0 : 32.0;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 25,
                  bottom: screenSize.height < 800 ? 20 : 40,
                ),
                child: Text(
                  'Select Color',
                  style: TextStyle(
                    color: AppColors.grey700,
                    fontSize: screenSize.width < 400 ? 18 : 20,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: screenSize.height < 800 ? 10 : 35,
              left: horizontalPadding,
              right: horizontalPadding,
            ),
            child: SizedBox(
              height: 160,
              child: Obx(
                () => Image.asset(
                  carModels[controller.index.value]
                      .imagesByColor[controller.selectedColor.value.name]!,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
              ),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'White Color',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: (screenSize.width < 400 ? 22 : 24),
                      ),
                    ),
                    Text(
                      '\$2000',
                      style: TextStyle(
                        color: AppColors.red,
                        fontSize: (screenSize.width < 400 ? 18 : 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 16,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: carModels[controller.index.value]
                        .imagesByColor
                        .keys
                        .map(
                      (color) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: ColorCircle(
                            carColor: getCarColorFromString(color),
                            onTap: () {
                              controller.selectedColor.value =
                                  getCarColorFromString(color);
                            },
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
            ),
            child: Container(
              width: screenSize.width,
              height: 1,
              color: AppColors.grey400,
            ),
          ),
          const CarFeatures(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
