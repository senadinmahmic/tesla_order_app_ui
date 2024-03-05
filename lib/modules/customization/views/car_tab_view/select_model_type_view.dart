import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/views/car_tab_view/widgets/model_type_options.dart';

class SelectModelTypeView extends GetView<CustomizationController> {
  const SelectModelTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final horizontalPadding = screenSize.width < 400 ? 26.0 : 32.0;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
                'Select Model Type',
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
            height: 150,
            child: Image.asset(
              carModels[controller.index.value].imagesByColor.values.first,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ModelTypeOptions(
                modelType:
                    carModels[controller.index.value].performanceModel.type,
                price: carModels[controller.index.value]
                    .performanceModel
                    .price
                    .toString(),
              ),
              ModelTypeOptions(
                modelType:
                    carModels[controller.index.value].longRangeModel.type,
                price: carModels[controller.index.value]
                    .longRangeModel
                    .price
                    .toString(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
