import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/icons_and_text.dart';
import '../../../../widgets/small_text.dart';

class FoodTiles extends StatelessWidget {
  const FoodTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.w20,
        right: Dimensions.w20,
        bottom: Dimensions.h10,
      ),
      child: Row(children: [
        /// image section
        Container(
          width: Dimensions.h110,
          height: Dimensions.h110,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(Dimensions.r20),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/images/6.webp')),
          ),
        ),

        /// text container
        Expanded(
          child: Container(
            height: Dimensions.h110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimensions.r20),
                bottomRight: Radius.circular(Dimensions.r20),
              ),
              color: AppColors.whiteColor,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimensions.w10,
                right: Dimensions.w10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(text: 'Nutritious fruit meal in China'),
                  SizedBox(height: Dimensions.h10),
                  SmallText(text: 'With chinese characterictics'),
                  SizedBox(height: Dimensions.h10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconAndText(
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor1,
                        text: 'Normal',
                      ),
                      IconAndText(
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                        text: '1.7km',
                      ),
                      IconAndText(
                        icon: Icons.access_time_rounded,
                        iconColor: AppColors.iconColor2,
                        text: '32min',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
