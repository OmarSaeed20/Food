import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';

import '../../../widgets/app_column.dart';

Widget buildProductInfo(String name) {
  return Container(
    padding: EdgeInsets.only(
      top: getProportionateScreenHeight(15.0),
      left: getProportionateScreenWidth(10.0),
      right: getProportionateScreenWidth(10.0),
    ),
    child: CustomAppColumn(
      text: name,
    ),
  );
}
