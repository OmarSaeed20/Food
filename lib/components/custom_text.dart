import 'package:flutter/material.dart';

import '../widgets/colors.dart';
import '../widgets/dimensions.dart';

class CustomBigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final double? height;
  final TextOverflow? overflow;

  const CustomBigText({
    Key? key,
    required this.text,
    this.size,
    this.height,
    this.overflow = TextOverflow.ellipsis,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        height: height,
        color: color ?? AppColors.mainBlackColor,
        fontWeight: FontWeight.w400,
        fontSize: size ?? Dimensions.font26,
      ),
    );
  }
}
