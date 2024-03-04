import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

import 'package:tesla_order_app_ui/modules/customization/controllers/customization_controller.dart';
import 'package:video_player/video_player.dart';

class SelectAutoPilotTypeView extends GetView<CustomizationController> {
  const SelectAutoPilotTypeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: screenSize.height * 0.45,
              width: screenSize.width,
              child: Obx(
                () {
                  if (controller.selectedAutopilot.value ==
                      AutopilotType.Full_Self_Driving) {
                    controller
                        .toggleDisplayMode(); // Reset and play the video if Full_Self_Driving is selected
                    return controller.videoPlayerController.value.isInitialized
                        ? FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: screenSize.width,
                              height: screenSize.width /
                                  controller
                                      .videoPlayerController.value.aspectRatio,
                              child:
                                  VideoPlayer(controller.videoPlayerController),
                            ),
                          )
                        : Container();
                  } else {
                    return Image.asset(
                        'assets/images/tesla_autopilot/tesla_autopilot.png',
                        fit: BoxFit.cover);
                  }
                },
              ),
            ),
            Container(
                height: screenSize.height * 0.45,
                width: screenSize.width,
                color: Colors.black.withOpacity(0.05)),
          ],
        ),
      ],
    );
  }
}
