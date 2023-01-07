import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_nav_controller/home/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food_Delivery',
      home: Home(),
    );
  }
}
