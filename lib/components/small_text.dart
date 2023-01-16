import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import 'size_config.dart';

 


class CustomSmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final double? height;

  const CustomSmallText({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        height: height ?? getProportionateScreenHeight(1.2),
        color: color ?? signColor,
        fontSize: size ?? Dimensions.font12,
      ),
    );
  }
}
