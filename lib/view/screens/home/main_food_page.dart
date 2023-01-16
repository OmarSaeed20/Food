import 'package:flutter/material.dart';

import '../../../components/size_config.dart';
import 'build_app_bar.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    // print('------------' + MediaQuery.of(context).size.height.toString()); == "872.7272727272727"
    // ignore: avoid_print
    // print('------------' + MediaQuery.of(context).size.width.toString());
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(30.0),
                    vertical: getProportionateScreenHeight(20.0)),
                child: const BuildRowItem(),
              ),
              SizedBox(height: getProportionateScreenHeight(10.0)),
              const Expanded(
                  child: SingleChildScrollView(child: FoodPageBody())),
            ],
          ),
        ),
      ),
    );
  }
}
