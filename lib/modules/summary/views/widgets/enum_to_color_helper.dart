import 'package:flutter/material.dart';
import 'package:tesla_order_app_ui/config/app_colors.dart';

import 'package:tesla_order_app_ui/data/carData/car_data.dart';

Color getCarColor(CarColors color) {
  switch (color) {
    case CarColors.Black:
      return Colors.black;
    case CarColors.White:
      return Colors.white;
    case CarColors.Red:
      return Colors.red;
    case CarColors.Blue:
      return Colors.blue;
    case CarColors.Grey:
      return Colors.grey;
    default:
      return Colors.transparent;
  }
}

Color getInteriorColor(InteriorColors color) {
  switch (color) {
    case InteriorColors.All_Black:
      return Colors.black;
    case InteriorColors.Black_and_White:
      return AppColors.grey300!;
  }
}
