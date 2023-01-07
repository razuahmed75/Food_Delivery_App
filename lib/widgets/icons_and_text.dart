import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../utils/dimensions.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  const IconAndText({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: Dimensions.h24),
        SizedBox(width: Dimensions.w3),
        SmallText(text: text),
      ],
    );
  }
}
