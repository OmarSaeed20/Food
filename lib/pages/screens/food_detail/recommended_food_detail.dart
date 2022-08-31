import 'package:flutter/material.dart';

import '../../../components/custom_text.dart';
import '../../../widgets/app_icon.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/dimensions.dart';
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
            toolbarHeight: Dimensions.height60,
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.clear),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ]),
            pinned: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.height20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )),
                padding: EdgeInsets.only(
                  top: Dimensions.height5,
                  bottom: Dimensions.height10,
                ),
                width: double.maxFinite,
                child: Center(
                    child: CustomBigText(
                  text: 'Silver App bar',
                  size: Dimensions.font26,
                )),
              ),
            ),
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/images 5.jpeg",
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
                        'country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out '),
                margin: EdgeInsets.only(
                  right: Dimensions.width15,
                  left: Dimensions.width20,
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
