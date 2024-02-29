class CarModel {
  final String name;
  final String image;
  final Map<String, String> imagesByColor;
  final String description;
  final PerformanceModel performanceModel;
  final LongRangeModel longRangeModel;
  final String range;
  final String topSpeed;
  final String accelerationSpeed;
  final String motortype;
  final String motors;
  final List<String> features;

  CarModel({
    required this.name,
    required this.image,
    required this.imagesByColor,
    required this.description,
    required this.performanceModel,
    required this.longRangeModel,
    required this.range,
    required this.topSpeed,
    required this.accelerationSpeed,
    required this.motortype,
    required this.motors,
    required this.features,
  });
}

class PerformanceModel {
  final String price;
  final String topSpeed;
  final String accelerationSpeed;

  PerformanceModel({
    required this.price,
    required this.topSpeed,
    required this.accelerationSpeed,
  });
}

class LongRangeModel {
  final String price;
  final String topSpeed;
  final String accelerationSpeed;

  LongRangeModel({
    required this.price,
    required this.topSpeed,
    required this.accelerationSpeed,
  });
}
