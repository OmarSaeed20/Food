import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import 'package:foodd/widgets/app_icon.dart';
import 'package:iconly/iconly.dart';

import '../../../components/custom_text.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';

class BuildAppBarItem extends StatelessWidget {
  const BuildAppBarItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomBigText(
              text: 'Egpyt',
              size: Dimensions.size28,
              color: mainColor,
            ),
            Row(
              children: [
                CustomBigText(
                  text: 'Cairo',
                  color: signColor,
                  size: getProportionateScreenHeight(16.0),
                ),
                Icon(
                  IconlyBold.arrow_down_2,
                  size: getProportionateScreenHeight(16.0),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Center(
          child: Container(
            height: getProportionateScreenHeight(45.0),
            width: getProportionateScreenWidth(45.0),
            child: AppIcon(
              backgroundColors: mainColor,
              icon: IconlyLight.search,
              color: Colors.white,
              iconSize: getProportionateScreenHeight(20.0),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
