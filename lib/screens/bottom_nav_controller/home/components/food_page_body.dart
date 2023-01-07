import 'package:flutter/material.dart';
import 'package:food_delivery/screens/bottom_nav_controller/home/components/slider.dart';
import 'package:food_delivery/screens/food_detail/details.dart';
import 'package:food_delivery/screens/recommended_food_detail/recommended_food_detail.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';
import '../../../../utils/dimensions.dart';
import 'food_tiles.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            /// slider section
            GestureDetector(
                onTap: () => Get.to(() => FoodDetail()), child: FoodSlider()),

            /// popular text
            SizedBox(height: Dimensions.h15 * 2),
            Container(
              margin: EdgeInsets.only(left: Dimensions.w15 * 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  BigText(text: 'Popular'),
                  SizedBox(width: Dimensions.w10),
                  Container(
                    margin: const EdgeInsets.only(bottom: 3),
                    child: BigText(text: '.', color: Colors.black26),
                  ),
                  SizedBox(width: Dimensions.w10),
                  Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      child: SmallText(text: 'Food pairing')),
                ],
              ),
            ),

            /// list of food and text
            SizedBox(height: Dimensions.h20),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () => Get.to(() => RecommendedFoodDetail()),
                      child: FoodTiles());
                }),
          ],
        ),
      ),
    );
  }
}
