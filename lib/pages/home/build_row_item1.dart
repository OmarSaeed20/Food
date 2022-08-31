import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../components/custom_text.dart';
import '../../widgets/colors.dart';
import '../../widgets/dimensions.dart';

class BuildRowItem extends StatelessWidget {
  const BuildRowItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomBigText(
              text: 'Contry',
              size: Dimensions.size28,
              color: AppColors.mainColor,
            ),
            Row(
              children: [
                CustomBigText(
                  text: 'Cairo',
                  color: AppColors.signColor,
                  size: Dimensions.size16,
                ),
                Icon(
                  IconlyBold.arrow_down_2,
                  size: Dimensions.size16,
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        // ignore: sized_box_for_whitespace
        Center(
          child: Container(
            height: Dimensions.height45,
            width: Dimensions.width45,
            child: const Icon(
              IconlyLight.search,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
