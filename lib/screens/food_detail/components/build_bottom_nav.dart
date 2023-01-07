import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/big_text.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          /// quantity section
          Container(
            padding: EdgeInsets.all(Dimensions.h20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.r20),
              color: AppColors.whiteColor,
            ),
            child: Row(children: [
              Icon(Icons.remove, color: AppColors.textColor),
              SizedBox(width: Dimensions.h10 / 2),
              BigText(text: '0'),
              SizedBox(width: Dimensions.h10 / 2),
              Icon(Icons.add, color: AppColors.textColor),
            ]),
          ),

          /// add to cart
          Container(
            padding: EdgeInsets.all(Dimensions.h20),
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.circular(Dimensions.r20),
            ),
            child: BigText(
                text: '\$10 | Add to cart', color: AppColors.whiteColor),
          ),
        ],
      ),
    );
  }
}
