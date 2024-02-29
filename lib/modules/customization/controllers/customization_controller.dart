import 'package:get/get.dart';

class CustomizationController extends GetxController {
  final index = 0.obs;

  @override
  void onInit() {
    index.value = Get.arguments['currentPageIndex'];
    super.onInit();
  }
}
