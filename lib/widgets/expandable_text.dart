import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isShowMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SmallText(
          text: widget.text,
          maxLines: isShowMore ? null : 5,
          overflow: isShowMore ? TextOverflow.visible : TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          size: Dimensions.f16,
        ),
        TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.all(0),
              foregroundColor: AppColors.mainColor,
            ),
            onPressed: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(isShowMore ? 'Show less' : 'Show more'),
                Icon(isShowMore
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
              ],
            )),
      ],
    );
  }
}
