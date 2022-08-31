import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../components/custom_text.dart';
import '../../components/icon_and_text_widget.dart';
import '../../components/small_text.dart';
import '../../widgets/colors.dart';
import '../../widgets/dimensions.dart';

class ListFoodAndImage extends StatelessWidget {
  const ListFoodAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Dimensions.width30,
        right: Dimensions.width5,
        bottom: Dimensions.height10,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: Dimensions.height120,
            width: Dimensions.width120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white38,
              image: const DecorationImage(
                image: AssetImage("assets/images/images 3.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: Dimensions.height100,
              // width: Dimensions.width200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20))),
              child: Padding(
                padding: EdgeInsets.only(
                  left: Dimensions.width10,
                  right: Dimensions.width10,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomBigText(
                          text: 'Nutritious Fruit meal in china'),
                      SizedBox(height: Dimensions.height10),
                      const CustomSmallText(
                          text: 'with chinese characteristics '),
                      SizedBox(height: Dimensions.height10),
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
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
