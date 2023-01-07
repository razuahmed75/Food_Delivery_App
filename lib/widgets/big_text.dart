import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final double? size;
  final Color? color;
  final TextOverflow? overflow;

  const BigText({
    super.key,
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color(0xFFF000000),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        overflow: overflow,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
