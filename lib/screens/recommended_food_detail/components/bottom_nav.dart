import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/big_text.dart';

class BottomNavSection extends StatelessWidget {
  const BottomNavSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// total amout
        _buildTotal(),

        /// addToCar and favorite
        Container(
          height: Dimensions.h120,
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.h20,
            vertical: Dimensions.h15 * 2,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColorlight,
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(Dimensions.r20 * 2)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _fav(),
              _addToCart(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _addToCart() {
    return Container(
      padding: EdgeInsets.all(Dimensions.h20),
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(Dimensions.r20),
      ),
      child: BigText(text: '\$10 | Add to cart', color: AppColors.whiteColor),
    );
  }

  Widget _fav() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.w20 - 2,
        vertical: Dimensions.h15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.r20),
        color: AppColors.whiteColor,
      ),
      child: Icon(
        Icons.favorite,
        color: AppColors.mainColor,
      ),
    );
  }

  Widget _buildTotal() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.w20 * 3,
        vertical: Dimensions.h10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppIcon(
            icon: Icons.remove,
            iconSize: Dimensions.h24,
            iconColor: AppColors.whiteColor,
            backgroundColor: AppColors.mainColor,
          ),
          BigText(
            text: "\$12.88 X 0",
            size: Dimensions.f26,
          ),
          AppIcon(
            icon: Icons.add,
            iconSize: Dimensions.h24,
            iconColor: AppColors.whiteColor,
            backgroundColor: AppColors.mainColor,
          ),
        ],
      ),
    );
  }
}
