import 'package:flutter/material.dart';
import '../../../components/custom_text.dart';
import '../../../components/size_config.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_icon.dart';

class CustomRecommendedNavigationBar extends StatelessWidget {
  const CustomRecommendedNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(
            left:  getProportionateScreenWidth(20.0) * 2.5,
            right: getProportionateScreenWidth(20.0) * 2.5,
            top:  getProportionateScreenHeight(10.0),
            bottom:  getProportionateScreenHeight(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:  getProportionateScreenWidth(30.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.size26,
                  icon: Icons.remove,
                  backgroundColors: mainColor,
                  color: Colors.white,
                ),
                CustomBigText(
                  text: '\$12.88 ' ' X ' ' 0',
                  size: Dimensions.size26,
                  color: mainBlackColor,
                ),
                AppIcon(
                  iconSize: Dimensions.size26,
                  icon: Icons.add,
                  backgroundColors: mainColor,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Container(
          height:  getProportionateScreenHeight(110.0),
          padding: EdgeInsets.only(
            top:  getProportionateScreenHeight(20.0),
            bottom:  getProportionateScreenHeight(20.0),
            left:  getProportionateScreenWidth(20.0),
            right:  getProportionateScreenWidth(20.0),
          ),
          decoration: BoxDecoration(
            color: buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimensions.radius20 * 2),
              topRight: Radius.circular(Dimensions.radius20 * 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical:  getProportionateScreenHeight(5.0),
                  horizontal:  getProportionateScreenWidth(15.0),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color: Colors.black26,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical:  getProportionateScreenHeight(20.0),
                  horizontal:  getProportionateScreenWidth(7.0),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: mainColor,
                ),
                child: const CustomBigText(
                  text: '   Add to Cart   ',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
