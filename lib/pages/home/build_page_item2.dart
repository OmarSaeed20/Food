import 'package:flutter/material.dart';

import '../../widgets/app_column.dart';
import '../../widgets/dimensions.dart';

class BuildPageItem2 extends StatefulWidget {
  const BuildPageItem2({Key? key}) : super(key: key);
  @override
  _BuildPageItem2 createState() => _BuildPageItem2();
}

class _BuildPageItem2 extends State<BuildPageItem2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Dimensions.height15,
        left: Dimensions.width10,
        right: Dimensions.width10,
      ),
      child: const AppColumn(
        text: 'Chinese side',
      ),
    );
  }
}
