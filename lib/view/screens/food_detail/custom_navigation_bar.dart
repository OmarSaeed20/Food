import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import 'package:foodd/utils/dimensions.dart';
import '../../../components/custom_text.dart';
import '../../../utils/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(110.0),
      padding: EdgeInsets.only(
        top: getProportionateScreenHeight(20.0),
        bottom: getProportionateScreenHeight(20.0),
        left: getProportionateScreenWidth(20.0),
        right: getProportionateScreenWidth(20.0),
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
            width: getProportionateScreenWidth(200.0) / 1.7,
            // height: Dimensions.height100 / 2,
            padding: EdgeInsets.only(
              top: getProportionateScreenHeight(15.0),
              bottom: getProportionateScreenHeight(15.0),
              right: getProportionateScreenWidth(20.0),
              left: getProportionateScreenWidth(20.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.remove),
                CustomBigText(text: '0'),
                Icon(Icons.add),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            // height: Dimensions.height110 / 2,
            padding: EdgeInsets.symmetric(
              vertical:   getProportionateScreenHeight(20.0),
              horizontal:   getProportionateScreenWidth(7.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(  getProportionateScreenHeight(20.0)),
              color: mainColor,
            ),
            child: const CustomBigText(
              text: '\$ 10 | Add to cart ',
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
