import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import 'package:iconly/iconly.dart';

import '../components/custom_text.dart';
import '../components/icon_and_text_widget.dart';
import '../components/small_text.dart';
import '../utils/colors.dart';
import '../utils/dimensions.dart';

class CustomAppColumn extends StatelessWidget {
  final String text;
  const CustomAppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height:getProportionateScreenHeight(10.0)),
        Row(children: [
          Wrap(
            children: List.generate(
                5,
                (index) => Icon(
                      IconlyLight.star,
                      color: mainColor,
                      size: Dimensions.size15,
                    )),
          ),
          SizedBox(width: Dimensions.radius10),
          const CustomSmallText(text: '4.5'),
          SizedBox(width: getProportionateScreenWidth(10.0)),
          const CustomSmallText(text: '1287'),
          SizedBox(width: getProportionateScreenWidth(7.0)),
          const CustomSmallText(text: 'comments'),
        ]),
        SizedBox(height: getProportionateScreenHeight(20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            IconAndTextWidget(
              iconColor: iconColor1,
              text: 'Normal',
              icon: Icons.circle_sharp,
            ),
            IconAndTextWidget(
              iconColor: mainColor,
              text: '1.7Km',
              icon: IconlyLight.location,
            ),
            IconAndTextWidget(
              iconColor: iconColor2,
              text: '32 min',
              icon: IconlyLight.time_circle,
            ),
          ],
        ),
      ],
    );
  }
}
