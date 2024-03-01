import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_container.dart';
import 'package:tesla_order_app_ui/modules/customization/views/car_tab_view/widgets/car_tab_info.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab/select_car_color_view.dart';

import '../controllers/customization_controller.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/tabbar_controller.dart';
import 'package:tesla_order_app_ui/modules/customization/views/car_tab_view/select_model_type_view.dart';

class CustomizationView extends GetView<CustomizationController> {
  const CustomizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background1,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Image.asset(
          'assets/images/tesla_logo.png',
          height: 100,
          color: AppColors.black,
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: TabBarController(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: controller.tabController,
              children: const <Widget>[
                SelectModelTypeView(),
                SelectCarColorView(),
                SizedBox(),
                SizedBox(),
              ],
            ),
          ),
          Obx(
            () {
              final page = controller.currentTabPage.value;
              return BottomContainer(
                child: page == 0
                    ? const CarTabInfo()
                    : Container(
                        color: Colors.red,
                        width: 50,
                        height: 50,
                      ),
              );
            },
          ),
        ],
      ),
    );
  }
}
