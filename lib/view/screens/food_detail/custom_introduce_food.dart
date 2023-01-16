import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
import '../../../components/custom_text.dart';
import '../../../utils/dimensions.dart';
import '../../../widgets/app_column.dart';
import '../../../widgets/expandable_text_widget.dart';

class CustomIntroduceFood extends StatelessWidget {
  const CustomIntroduceFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppColumn(text: 'Biryani'),
        SizedBox(
          height: getProportionateScreenHeight(20.0),
        ),
        const CustomBigText(text: 'Introduce'),
        SizedBox(
          height:  getProportionateScreenHeight(10.0),
        ),
        const Expanded(
          child: SingleChildScrollView(
            child: ExpandableTextWidget(
              text:
                  ' country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out  country. I even took a continuing education class at RIT on slit scan photography. I also learned about lighting food from those nine photographers as I printed out ',
            ),
          ),
        ),
      ],
    );
  }
}
