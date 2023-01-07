import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/dimensions.dart';
import '../../../../widgets/app_column_section.dart';

class FoodSlider extends StatefulWidget {
  const FoodSlider({super.key});

  @override
  State<FoodSlider> createState() => _FoodSliderState();
}

class _FoodSliderState extends State<FoodSlider> {
  CarouselController _carouselController = CarouselController();
  int activeIndex = 0;

  List images = [
    'assets/images/1.png',
    'assets/images/2.webp',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.webp',
    'assets/images/66.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.h300,
          margin: EdgeInsets.only(top: Dimensions.h15),
          child: CarouselSlider.builder(
              carouselController: _carouselController,
              itemCount: images.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                var urlImages = images[itemIndex];
                return _buildItems(urlImages);
              },
              options: CarouselOptions(
                height: Dimensions.h300,
                autoPlay: true,
                viewportFraction: 0.85,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() => activeIndex = index);
                },
              )),
        ),

        /// dots indicator
        _buildIndicator(),
      ],
    );
  }

  /// build methods

  Widget _buildItems(urlImage) => Stack(
        children: [
          /// image section
          Container(
            height: Dimensions.h200,
            width: Dimensions.w320,
            margin: EdgeInsets.symmetric(horizontal: Dimensions.w10),
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.circular(Dimensions.r15 * 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.r15 * 2),
              child: Image(
                image: AssetImage(urlImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          /// card section
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: Dimensions.h20),
              height: Dimensions.h300 / 2,
              width: Dimensions.w270,
              decoration: BoxDecoration(
                color: AppColors.whiteColorlight,
                borderRadius: BorderRadius.circular(Dimensions.r15 * 2),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 3.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),

              /// card elements

              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w10,
                  vertical: Dimensions.h20,
                ),
                child: AppColumn(title: 'Chinese Side'),
              ),
            ),
          ),
        ],
      );
  Widget _buildIndicator() => AnimatedSmoothIndicator(
        onDotClicked: (index) => _carouselController.animateToPage(index),
        activeIndex: activeIndex,
        count: images.length,
        effect: SlideEffect(
          dotColor: Colors.grey.shade400,
          activeDotColor: AppColors.mainColor,
        ),
      );
}
