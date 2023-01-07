import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/big_text.dart';

SliverAppBar buildSliverAppBar() {
  return SliverAppBar(
    pinned: true,
    automaticallyImplyLeading: false,

    /// icons
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Get.back(), child: AppIcon(icon: Icons.clear)),
        AppIcon(icon: Icons.shopping_cart_outlined),
      ],
    ),
    backgroundColor: AppColors.iconColor1,
    expandedHeight: Dimensions.h300,

    /// pinned product title
    bottom: PreferredSize(
        child: Container(
          width: double.maxFinite,
          alignment: AlignmentDirectional.center,
          padding: EdgeInsets.only(
            top: Dimensions.h10 / 2,
            bottom: Dimensions.h10,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimensions.r15 * 2),
            ),
          ),
          child: BigText(
            text: 'Chinese Side',
            size: Dimensions.f26,
          ),
        ),
        preferredSize: Size.fromHeight(Dimensions.h45)),

    /// background image
    flexibleSpace: FlexibleSpaceBar(
      centerTitle: true,
      background: Image.asset(
        'assets/images/6.webp',
        width: double.maxFinite,
        fit: BoxFit.cover,
      ),
    ),
  );
}
