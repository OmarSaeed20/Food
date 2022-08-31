import 'package:flutter/material.dart';
import '../../../components/custom_text.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/dimensions.dart';

class CustomRecommendedNavigationBar extends StatelessWidget {
  const CustomRecommendedNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: Dimensions.width20 * 2.5,
            right: Dimensions.width20 * 2.5,
            top: Dimensions.height10,
            bottom: Dimensions.height10,
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal:  Dimensions.width30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: Dimensions.size26,
                  icon: Icons.remove,
                  backgroundColors: AppColors.mainColor,
                  color: Colors.white,
                ),
                CustomBigText(
                  text: '\$12.88 ' ' X ' ' 0',
                  size: Dimensions.size26,
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                  iconSize: Dimensions.size26,
                  icon: Icons.add,
                  backgroundColors: AppColors.mainColor,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: Dimensions.height110,
          padding: EdgeInsets.only(
            top: Dimensions.height20,
            bottom: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
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
                  vertical: Dimensions.height5,
                  horizontal:  Dimensions.width15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  color:Colors.black12,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: Dimensions.height20,
                  horizontal:  Dimensions.width7,

                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor,
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
