// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tesla_order_app_ui/data/models/car_model.dart';

enum ModelType {
  Performance,
  LongRange,
}

enum CarColors {
  Black,
  White,
  Red,
  Blue,
  Grey,
}

enum InteriorColors {
  Black_and_White,
  All_Black,
}

enum AutopilotType {
  Autopilot,
  Full_Self_Driving,
}

final List<CarModel> carModels = [
  CarModel(
    name: 'Model X',
    image: 'assets/images/tesla_model_x.png',
    imagesByColor: {
      'Black': 'assets/images/model_colors/model_x/tesla_model_x_black.png',
      'White': 'assets/images/model_colors/model_x/tesla_model_x_white.png',
      'Red': 'assets/images/model_colors/model_x/tesla_model_x_red.png',
    },
    interiorColorInfo: {
      InteriorColors.Black_and_White: InteriorColorInfo(
        color: Colors.white,
        image: 'assets/images/black_white_interior.jpg',
        price: 1000,
      ),
      InteriorColors.All_Black: InteriorColorInfo(
        color: Colors.black,
        image: 'assets/images/all_black_interior.jpg',
        price: 0,
      ),
    },
    autopilot: {
      AutopilotType.Autopilot: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_autopilot.png',
          price: 3000,
          description:
              'Semi-automated system that assists a human driver by controlling certain aspects of vehicle operation, such as maintaining speed and staying within lanes, but still requires human supervision and intervention.'),
      AutopilotType.Full_Self_Driving: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_selfdriving.mp4',
          price: 5000,
          description:
              'Fully automated system that navigates a vehicle without human intervention, using advanced sensors and algorithms to perceive and respond to the environment.'),
    },
    description:
        'The Tesla Model X is a sleek, all-electric SUV featuring distinctive falcon-wing doors and advanced autopilot capabilities. With its powerful performance and cutting-edge technology, the Model X represents the pinnacle of electric vehicle innovation.',
    performanceModel: PerformanceModel(
      type: ModelType.Performance,
      price: 68590,
      topSpeed: '150',
      accelerationSpeed: '2.6',
    ),
    longRangeModel: LongRangeModel(
      type: ModelType.LongRange,
      price: 59990,
      topSpeed: '130',
      accelerationSpeed: '3.8',
    ),
    range: '326',
    topSpeed: '150',
    accelerationSpeed: '2.6',
    motortype: 'AWD',
    motors: 'Dual Motor',
    features: [
      'Falcon-wing doors',
      'Autopilot',
      'Full Self-Driving',
      'Premium Connectivity',
      'Over-the-air software updates',
    ],
  ),
  CarModel(
    name: 'Model S',
    image: 'assets/images/tesla_model_s.png',
    imagesByColor: {
      'Black': 'assets/images/model_colors/model_s/tesla_model_s_black.png',
      'White': 'assets/images/model_colors/model_s/tesla_model_s_white.png',
      'Red': 'assets/images/model_colors/model_s/tesla_model_s_red.png',
      'Blue': 'assets/images/model_colors/model_s/tesla_model_s_blue.png',
      'Grey': 'assets/images/model_colors/model_s/tesla_model_s_grey.png',
    },
    interiorColorInfo: {
      InteriorColors.Black_and_White: InteriorColorInfo(
        color: Colors.white,
        image: 'assets/images/black_white_interior.jpg',
        price: 1000,
      ),
      InteriorColors.All_Black: InteriorColorInfo(
        color: Colors.black,
        image: 'assets/images/all_black_interior.jpg',
        price: 0,
      ),
    },
    autopilot: {
      AutopilotType.Autopilot: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_autopilot.png',
          price: 3000,
          description:
              'Semi-automated system that assists a human driver by controlling certain aspects of vehicle operation, such as maintaining speed and staying within lanes, but still requires human supervision and intervention.'),
      AutopilotType.Full_Self_Driving: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_selfdriving.mp4',
          price: 5000,
          description:
              'Fully automated system that navigates a vehicle without human intervention, using advanced sensors and algorithms to perceive and respond to the environment.'),
    },
    description:
        'The Tesla Model S is a high-performance electric sedan with dual-motor all-wheel drive, incredible acceleration, and a spacious, luxurious interior. With its advanced technology and long-range capabilities, the Model S is the ultimate electric driving experience.',
    performanceModel: PerformanceModel(
      type: ModelType.Performance,
      price: 94990,
      topSpeed: '200',
      accelerationSpeed: '1.99',
    ),
    longRangeModel: LongRangeModel(
      type: ModelType.LongRange,
      price: 79990,
      topSpeed: '155',
      accelerationSpeed: '3.1',
    ),
    range: '405',
    topSpeed: '200',
    accelerationSpeed: '2.0',
    motortype: 'AWD',
    motors: 'Dual/Triple Motor',
    features: [
      'Dual-motor all-wheel drive',
      'Autopilot',
      'Full Self-Driving',
      'Premium Connectivity',
      'Over-the-air software updates',
    ],
  ),
  CarModel(
    name: 'Model Y',
    image: 'assets/images/tesla_model_y.png',
    imagesByColor: {
      'Black': 'assets/images/model_colors/model_y/tesla_model_y_black.png',
      'White': 'assets/images/model_colors/model_y/tesla_model_y_white.png',
      'Red': 'assets/images/model_colors/model_y/tesla_model_y_red.png',
      'Blue': 'assets/images/model_colors/model_y/tesla_model_y_blue.png',
      'Grey': 'assets/images/model_colors/model_y/tesla_model_y_grey.png',
    },
    interiorColorInfo: {
      InteriorColors.Black_and_White: InteriorColorInfo(
        color: Colors.white,
        image: 'assets/images/black_white_interior.jpg',
        price: 1000,
      ),
      InteriorColors.All_Black: InteriorColorInfo(
        color: Colors.black,
        image: 'assets/images/all_black_interior.jpg',
        price: 0,
      ),
    },
    autopilot: {
      AutopilotType.Autopilot: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_autopilot.png',
          price: 3000,
          description:
              'Semi-automated system that assists a human driver by controlling certain aspects of vehicle operation, such as maintaining speed and staying within lanes, but still requires human supervision and intervention.'),
      AutopilotType.Full_Self_Driving: Autopilot(
          image: 'assets/images/tesla_autopilot/tesla_selfdriving.mp4',
          price: 5000,
          description:
              'Fully automated system that navigates a vehicle without human intervention, using advanced sensors and algorithms to perceive and respond to the environment.'),
    },
    description:
        'The Tesla Model Y is a versatile, all-electric sedan with dual-motor all-wheel drive, advanced autopilot capabilities, and a minimalist, modern design. With its impressive range and performance, the Model 3 is the perfect combination of efficiency and innovation.',
    performanceModel: PerformanceModel(
      type: ModelType.Performance,
      price: 56990,
      topSpeed: '135',
      accelerationSpeed: '3.5',
    ),
    longRangeModel: LongRangeModel(
      type: ModelType.LongRange,
      price: 49990,
      topSpeed: '135',
      accelerationSpeed: '4.8',
    ),
    range: '353',
    topSpeed: '162',
    accelerationSpeed: '3.1',
    motortype: 'AWD',
    motors: 'Dual Motor',
    features: [
      'Dual-motor all-wheel drive',
      'Autopilot',
      'Full Self-Driving',
      'Premium Connectivity',
      'Over-the-air software updates',
    ],
  ),
];
