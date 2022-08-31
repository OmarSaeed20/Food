import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../components/custom_text.dart';
import '../components/icon_and_text_widget.dart';
import '../components/small_text.dart';
import 'colors.dart';
import 'dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomBigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(children: [
          Wrap(
            children: List.generate(
                5,
                (index) => Icon(
                      IconlyLight.star,
                      color: AppColors.mainColor,
                      size: Dimensions.size15,
                    )),
          ),
          SizedBox(width: Dimensions.radius10),
          const CustomSmallText(text: '4.5'),
          SizedBox(width: Dimensions.width10),
          const CustomSmallText(text: '1287'),
          SizedBox(width: Dimensions.width7),
          const CustomSmallText(text: 'comments'),
        ]),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              iconColor: AppColors.iconColor1,
              text: 'Normal',
              icon: Icons.circle_sharp,
            ),
            IconAndTextWidget(
              iconColor: AppColors.mainColor,
              text: '1.7Km',
              icon: IconlyLight.location,
            ),
            IconAndTextWidget(
              iconColor: AppColors.iconColor2,
              text: '32 min',
              icon: IconlyLight.time_circle,
            ),
          ],
        ),
      ],
    );
  }
}
