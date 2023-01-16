import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import 'package:iconly/iconly.dart';

import '../../../components/custom_text.dart';
import '../../../components/icon_and_text_widget.dart';
import '../../../components/small_text.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
 


class ListFoodAndImage extends StatelessWidget {
  const ListFoodAndImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: getProportionateScreenWidth(30.0),
        right:  getProportionateScreenWidth(5.0),
        bottom:  getProportionateScreenHeight(10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: getProportionateScreenHeight(120.0),
            width: getProportionateScreenWidth(120.0),
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
              height:getProportionateScreenHeight(100.0),
              // width: Dimensions.width200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      bottomRight: Radius.circular(Dimensions.radius20))),
              child: Padding(
                padding: EdgeInsets.only(
                  left:getProportionateScreenWidth(10.0),
                  right: getProportionateScreenWidth(10.0),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomBigText(
                          text: 'Nutritious Fruit meal in china'),
                      SizedBox(height: getProportionateScreenHeight(10.0)),
                      const CustomSmallText(
                          text: 'with chinese characteristics '),
                      SizedBox(height: getProportionateScreenHeight(10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  const [
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
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
