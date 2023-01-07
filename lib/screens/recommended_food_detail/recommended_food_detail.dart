import 'package:flutter/material.dart';
import 'package:food_delivery/screens/recommended_food_detail/components/bottom_nav.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/expandable_text.dart';
import '../../utils/colors.dart';
import 'components/sliver_app_bar.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          /// sliver app bar
          buildSliverAppBar(),

          /// body text
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.w20),
                  child: ExpandableText(
                      text:
                          "Lorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtexLorem Ipsum is specimen book.electronic specimen book. lectronic specimen book. is simply dummy also the leap into electronic specimen book. is simply dummy also the leap into electronic specimen book. It has survived not o took a galley of type and scrambled it to make a type printing and typesettingtex"),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavSection(),
    );
  }
}
