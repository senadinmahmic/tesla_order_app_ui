import 'package:flutter/material.dart';
import 'package:tesla_order_app_ui/data/carData/car_data.dart';

Color getColorFromString(String color) {
  switch (color) {
    case 'Black':
      return Colors.black;
    case 'White':
      return Colors.white;
    case 'Red':
      return Colors.red;
    case 'Blue':
      return Colors.blue;
    case 'Grey':
      return Colors.grey;
    default:
      return Colors.black;
  }
}

CarColors getCarColorFromString(String color) {
  switch (color) {
    case 'Black':
      return CarColors.Black;
    case 'White':
      return CarColors.White;
    case 'Red':
      return CarColors.Red;
    case 'Blue':
      return CarColors.Blue;
    case 'Grey':
      return CarColors.Grey;
    default:
      return CarColors.Black;
  }
}
