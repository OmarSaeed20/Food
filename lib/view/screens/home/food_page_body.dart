import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import 'package:get/get.dart';
import '../../../components/custom_text.dart';
import '../../../components/small_text.dart';

import '../../../controllers/pupular_product_controaller.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/dots_indicator.dart';
import 'build_slider.dart';
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
        // TODO : Api
        // GetBuilder<PopularProductConrtoaller>(
        //   builder: (popularProduct) {
        //     return popularProduct.isLoaded
        //         ? Container(
        //             height: Dimensions.pageView,
        //             color: Colors.transparent,
        //             child: PageView.builder(
        //               controller: pageController,
        //               physics: const BouncingScrollPhysics(),
        //               itemCount: popularProduct.pupularProductList.length,
        //               itemBuilder: (
        //                 context,
        //                 position,
        //               ) {
        //                 return buildSlider(
        //                     popularProduct.pupularProductList[position],
        //                     position,
        //                     currentPageValue);
        //               },
        //             ),
        //           )
        //         : Container(height: Dimensions.pageView);
        //   },
        // ),

        SizedBox(
          height: Dimensions.pageView,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, position) {
              return SliderItem(
                position: position,
                currentPageValue: currentPageValue,
              );
            },
          ),
        ),
        // TODO : Api
        // GetBuilder<PopularProductConrtoaller>(builder: (popularProduct) {
        //   return CustomDotsIndicator(
        //   dotsCount: popularProduct.pupularProductList.isEmpty? 1:popularProduct.pupularProductList.length,
        //   position: currentPageValue,
        //   size: const Size.square(9.0),
        // );
        // }),
        CustomDotsIndicator(
          dotsCount: 6,
          position: currentPageValue,
          size: const Size.square(9.0),
        ),
        SizedBox(height: getProportionateScreenHeight(10.0)),
        Container(
          margin: EdgeInsets.only(left: getProportionateScreenWidth(30.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const CustomBigText(text: 'Popular'),
              SizedBox(width: getProportionateScreenWidth(10.0)),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.size3),
                  child: const CustomBigText(text: '.', color: Colors.black26)),
              SizedBox(width: getProportionateScreenWidth(10.0)),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.size2),
                  child: CustomSmallText(
                    height: getProportionateScreenHeight(2.0),
                    text: 'food pairing',
                  )),
            ],
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(20.0)),
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
