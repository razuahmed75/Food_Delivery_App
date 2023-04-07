import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/screens/food_detail/components/build_bottom_nav.dart';
import 'package:food_delivery/screens/food_detail/components/food_introduction.dart';
import 'package:get/get.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/app_icon.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});
 void goToWhiteView(){
  changeSystemColor(Colors.blueGrey);
  Get.to(() => FoodDetail())?.then((result){
    changeSystemColor(Colors.black);
  });
}
void changeSystemColor(Color color){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: color,
    statusBarColor: color,
    systemNavigationBarDividerColor: color,
  ));
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        children: [
          /// image section
          buildBackgroundImage(),

          /// icon section
          buildHeaderIcons(),

          /// indtroduction of food
          FoodIntroduction(),
        ],
      ),

      /// bottom nav
      bottomNavigationBar: BottomNav(),
    );
  }

  /// build methods
  Positioned buildHeaderIcons() {
    return Positioned(
      top: Dimensions.h50,
      left: Dimensions.w20,
      right: Dimensions.w20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: AppIcon(
              icon: Icons.arrow_back_ios,
            ),
          ),
          AppIcon(
            icon: Icons.shopping_cart_outlined,
          ),
        ],
      ),
    );
  }

  Positioned buildBackgroundImage() {
    return Positioned(
        left: 0,
        right: 0,
        child: Container(
          width: double.maxFinite,
          height: Dimensions.h330,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/detail.jpg'),
          )),
        ));
  }
}
