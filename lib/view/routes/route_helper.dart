import 'package:flutter/cupertino.dart';
import 'package:foodd/view/screens/food_detail/food_detail.dart';
import 'package:foodd/view/screens/home/main_food_page.dart';
import 'package:get/get.dart';

import '../../components/size_config.dart';

class RouteHelper {
  static const String initial = '/';
  static const String foodDetail = '/food_detail';

  static String getInitial() => '$initial';
  static String getFoodDetail() => '$foodDetail';

  static List<GetPage> routes = [
    GetPage(
        name: initial,
        page: () => Builder(
              builder: (context) {
                SizeConfig().init(context);
                return const MainFoodPage();
              },
            )),
    GetPage(
        name: foodDetail,
        page: () {
          return const FoodDetail();
        },
        transition: Transition.fadeIn),
  ];
}
