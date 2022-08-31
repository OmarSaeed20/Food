import 'package:flutter/material.dart';
import '../../../widgets/expandable_text_widget.dart';
import '../../../components/custom_text.dart';
import '../../../widgets/app_column.dart';
import '../../../widgets/dimensions.dart';

class CustomIntroduceFood extends StatelessWidget {
  const CustomIntroduceFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppColumn(text: 'Biryani'),
        SizedBox(
          height: Dimensions.height20,
        ),
        const CustomBigText(text: 'Introduce'),
        SizedBox(
          height: Dimensions.height10,
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
