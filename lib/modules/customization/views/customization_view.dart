import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/modules/customization/views/autopilot_tab_view/select_autopilot_type_view.dart';
import 'package:tesla_order_app_ui/modules/customization/views/autopilot_tab_view/widgets/select_autopilot_type_bottom_content.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab_view/widgets/select_color_tab_price_button.dart';
import 'package:tesla_order_app_ui/modules/customization/views/interior_tab_view/select_interior_tab_view.dart';
import 'package:tesla_order_app_ui/modules/customization/views/interior_tab_view/widgets/select_interior_tab_bottom_content.dart';
import 'package:tesla_order_app_ui/modules/customization/widgets/bottom_container.dart';
import 'package:tesla_order_app_ui/modules/customization/views/car_tab_view/widgets/car_tab_info.dart';
import 'package:tesla_order_app_ui/modules/customization/views/exterior_tab_view/select_car_color_view.dart';

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
      body: Stack(
        children: [
          TabBarView(
            controller: controller.tabController,
            children: const <Widget>[
              SelectModelTypeView(),
              SelectCarColorView(),
              SelectInteriorTabView(),
              SelectAutoPilotTypeView(),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Obx(
              () {
                final page = controller.currentTabPage.value;
                return BottomContainer(
                  child: page == 0
                      ? const CarTabInfo()
                      : page == 1
                          ? const SelectColorTabPriceButton()
                          : page == 2
                              ? const SelectInteriorTabBottomContent()
                              : const SelectAutoPilotBottomContent(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
