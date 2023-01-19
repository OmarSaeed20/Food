import 'package:flutter/material.dart';
import 'package:foodd/view/screens/home/main_food_page.dart';
import 'package:get/get.dart';
import '../../../components/size_config.dart';
import '../../../widgets/app_icon.dart';
import 'custom_introduce_food.dart';
import 'custom_navigation_bar.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: getProportionateScreenHeight(350.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/images 2.jpeg"),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: getProportionateScreenHeight(45.0),
            left: getProportionateScreenWidth(20.0),
            right: getProportionateScreenWidth(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.to(() => const MainFoodPage());
                    },
                    child: const AppIcon(icon: Icons.arrow_back_ios)),
                GestureDetector(
                    onTap: () {},
                    child: const AppIcon(icon: Icons.shopping_cart_outlined)),
              ],
            ),
          ),
          //introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: getProportionateScreenHeight(330.0),
            child: Container(
              padding: EdgeInsets.only(
                left: getProportionateScreenWidth(20.0),
                right: getProportionateScreenWidth(15.0),
                top: getProportionateScreenHeight(20.0),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(getProportionateScreenHeight(20.0)),
                  topLeft: Radius.circular(getProportionateScreenHeight(20.0)),
                ),
                color: Colors.white,
              ),
              child: const CustomIntroduceFood(),
            ),
          ),
          //Expandable Text Widget
        ],
      ),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
