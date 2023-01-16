import 'package:flutter/material.dart';
import 'package:foodd/utils/dimensions.dart';

import '../../../components/custom_text.dart';
import '../../../components/size_config.dart';
import '../../../utils/colors.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/expandable_text_widget.dart';
import 'custom_recomm_navigation_bar.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print('------------' + MediaQuery.of(context).size.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: getProportionateScreenHeight(60.0),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ]),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight( getProportionateScreenHeight(20.0)),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
                padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(5.0),
                  bottom:  getProportionateScreenHeight(10.0),
                ),
                width: double.maxFinite,
                child: Center(
                    child: CustomBigText(
                  text: 'Silver App bar',
                  size: Dimensions.font26,
                )),
              ),
            ),
            backgroundColor: yellowColor,
            expandedHeight:  getProportionateScreenHeight(300.0),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/images 1.jpeg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: const ExpandableTextWidget(
                    text:
                        '''country. I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country.
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography.
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out country. 
I even took a continuing education class at RIT on slit scan photography. 
I also learned about lighting food from those nine photographers as I printed out  country. 
I even took a continuing education class at RIT on slit scan photography. 
'''),
                margin: EdgeInsets.only(
                  right:  getProportionateScreenWidth(15.0),
                  left:  getProportionateScreenWidth(20.0),
                ),
              ),
            ],
          )),
        ],
      ),
      bottomNavigationBar: const CustomRecommendedNavigationBar(),
    );
  }
}
