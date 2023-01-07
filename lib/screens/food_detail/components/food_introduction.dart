import 'package:flutter/material.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_column_section.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/expandable_text.dart';

class FoodIntroduction extends StatelessWidget {
  const FoodIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        top: Dimensions.h330 - 20,
        bottom: 0,
        child: Container(
          padding: EdgeInsets.only(
            left: Dimensions.w20,
            right: Dimensions.w20,
            top: Dimensions.w20,
          ),
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(Dimensions.r20),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppColumn(title: 'Chinese Side', size: Dimensions.f26),
              SizedBox(height: Dimensions.h20),
              BigText(text: 'Introduce'),
              SizedBox(height: Dimensions.h10),
              Expanded(
                child: SingleChildScrollView(
                  child: ExpandableText(
                    text:
                        'Lorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtext ever since the 1500s, when an unknown printer industry. Lorem Ipsum has been the industrys standard dummy',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
