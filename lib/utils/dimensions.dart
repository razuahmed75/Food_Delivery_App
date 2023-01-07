import 'package:get/get.dart';

class Dimensions {
  /// Device width and height
  static double screenHeight = Get.context!.height; // 834.91
  static double screenWidth = Get.context!.width; // 392.73

  /// dynamic height
  static double h110 = screenHeight / 7.59;
  static double h120 = screenHeight / 6.95;
  static double h130 = screenHeight / 6.95;
  static double h140 = screenHeight / 6.42;
  static double h200 = screenHeight / 4.17;
  static double h300 = screenHeight / 2.78;
  static double h320 = screenHeight / 2.61;
  static double h330 = screenHeight / 2.53;
  static double h350 = screenHeight / 2.38;

  /// height for paddding and margin
  static double h10 = screenHeight / 83.491;
  static double h20 = screenHeight / 41.75;
  static double h15 = screenHeight / 55.67;
  static double h24 = screenHeight / 34.78;
  static double h45 = screenHeight / 18.55;
  static double h50 = screenHeight / 16.70;

  /// dynamic width
  static double w200 = screenWidth / 1.97;
  static double w250 = screenWidth / 1.57;
  static double w270 = screenWidth / 1.45;
  static double w285 = screenWidth / 1.378;
  static double w320 = screenWidth / 1.22;

  /// width for padding and margin
  static double w3 = screenWidth / 130.91;
  static double w8 = screenWidth / 49.092;
  static double w10 = screenWidth / 39.273;
  static double w20 = screenWidth / 19.63;
  static double w15 = screenWidth / 26.182;
  static double w45 = screenWidth / 8.73;

  /// dynamic fonts
  static double f12 = screenHeight / 69.58;
  static double f16 = screenHeight / 52.18;
  static double f20 = screenHeight / 41.75;
  static double f26 = screenHeight / 32.11;

  /// dynamic radious
  static double r15 = screenHeight / 55.66;
  static double r20 = screenHeight / 41.75;
}
