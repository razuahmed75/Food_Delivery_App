import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../utils/strings.dart';
import '../../../../widgets/big_text.dart';
import '../../../../widgets/small_text.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: Dimensions.h10 / 2,
        left: Dimensions.w20,
        right: Dimensions.w20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              BigText(
                text: 'Bangladesh',
                color: AppColors.mainColor,
              ),
              Row(
                children: [
                  SmallText(
                    text: 'Joypurhat',
                    color: Colors.black54,
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ],
          ),
          Container(
              width: Dimensions.h45,
              height: Dimensions.h45,
              padding: EdgeInsets.all(Dimensions.h10 / 2),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.r15),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    kSearch,
                    color: AppColors.whiteColorlight,
                  ))),
        ],
      ),
    );
  }
}
