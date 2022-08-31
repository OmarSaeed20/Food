import 'package:flutter/material.dart';
import '../../../components/custom_text.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/dimensions.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: Dimensions.width200 / 1.7,
            // height: Dimensions.height100 / 2,
            padding: EdgeInsets.only(
           top: Dimensions.height15,
           bottom:  Dimensions.height15,
              right: Dimensions.width20,
              left: Dimensions.width20,
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
              vertical: Dimensions.height20,
              horizontal:  Dimensions.width7,

            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.mainColor,
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
