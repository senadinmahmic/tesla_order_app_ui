import 'package:get/get.dart';

import 'package:tesla_order_app_ui/data/carData/car_data.dart';

class SummaryController extends GetxController {
  late final index = 0.obs;
  late final selectedCarColor = CarColors.Black.obs;
  late final selectedModelType = ModelType.Performance.obs;
  late final selectedInterior = InteriorColors.Black_and_White.obs;
  late final selectedAutopilot = AutopilotType.Full_Self_Driving.obs;
  late final totalPrice = 0.obs;

  @override
  void onInit() {
    final arguments = Get.arguments;

    index.value = arguments['index'];
    selectedCarColor.value = arguments['selectedCarColor'];
    selectedModelType.value = arguments['selectedModelType'];
    selectedInterior.value = arguments['selectedInterior'];
    selectedAutopilot.value = arguments['selectedAutopilot'];
    totalPrice.value = arguments['totalPrice'];
    super.onInit();
  }
}
