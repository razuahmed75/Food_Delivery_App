import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icons_and_text.dart';
import 'small_text.dart';

class AppColumn extends StatelessWidget {
  final String title;
  final double? size;

  const AppColumn({
    super.key,
    required this.title,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: title, size: size),
        SizedBox(height: Dimensions.h10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                      )),
            ),
            SizedBox(width: Dimensions.w10),
            SmallText(text: '4.6'),
            SizedBox(width: Dimensions.w8),
            SmallText(text: '1287'),
            SizedBox(width: Dimensions.w8),
            SmallText(text: 'Comments'),
          ],
        ),
        SizedBox(height: Dimensions.h10 * 2),
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
    );
  }
}
