import 'package:get/get.dart';

import 'package:tesla_order_app_ui/data/carData/car_data.dart';

class CustomizationController extends GetxController {
  final index = 0.obs;
  final currentPage = 0.obs;

  final selectedModelType = ModelType.Performance.obs;

  @override
  void onInit() {
    index.value = Get.arguments['currentPageIndex'];
    super.onInit();
  }
}
