import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
 


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
  
  get mainBlackColor => null;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        height: height,
        color: color ?? mainBlackColor,
        fontWeight: FontWeight.w400,
        fontSize: size ?? Dimensions.font26,
      ),
    );
  }
}
