import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_nav_controller/home/components/food_page_body.dart';
import 'package:food_delivery/screens/bottom_nav_controller/home/components/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// header section
            Header(),

            /// food page body section
            FoodPageBody(),
          ],
        ),
      ),
    );
  }
}
