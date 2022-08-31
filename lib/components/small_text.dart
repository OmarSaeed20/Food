import 'package:flutter/material.dart';

import '../widgets/colors.dart';
import '../widgets/dimensions.dart';

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
        height: height ?? Dimensions.height102,
        color: AppColors.signColor,
        fontSize: size ?? Dimensions.font12,
      ),
    );
  }
}
