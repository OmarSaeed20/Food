import 'package:flutter/material.dart';
import '../../components/custom_text.dart';
import '../../components/small_text.dart';
import 'build_page_item1.dart';

import '../../widgets/dimensions.dart';
import '../../widgets/dots_indicator.dart';
import 'build_list_of_food.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  double currentPageValue = 0.0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ignore: sized_box_for_whitespace
        Container(
          // color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, position) {
              return PageViewItem1(
                position: position,
                currentPageValue: currentPageValue,
              );
            },
          ),
        ),
        CustomDotsIndicator(
          dotsCount: 5,
          position: currentPageValue,
          size: const Size.square(9.0),
        ),

        SizedBox(height: Dimensions.height10),

        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomBigText(text: 'Popular'),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.size3),
                  child: const CustomBigText(text: '.', color: Colors.black26)),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.size2),
                  child: const CustomSmallText(
                    text: 'food pairing',
                  )),
            ],
          ),
        ),

        SizedBox(height: Dimensions.height20),
        ListView.builder(

          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ListFoodAndImage();
          },
        ),
      ],
    );
  }
}
