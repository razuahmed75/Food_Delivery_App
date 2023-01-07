import 'package:flutter/material.dart';
import '../utils/dimensions.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double? size, height;
  final Color? color;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const SmallText({
    super.key,
    required this.text,
    this.size,
    this.height,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        color: color ?? Color(0xFF898887),
        fontSize: size ?? Dimensions.f12,
        fontFamily: 'Roboto',
        height: height,
      ),
    );
  }
}
