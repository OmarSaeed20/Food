import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomDotsIndicator extends StatelessWidget {
  final int dotsCount;
  final double position;
  final Size size;

  const CustomDotsIndicator({
    Key? key,
    required this.dotsCount,
    required this.position,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
      position: position,
      decorator: DotsDecorator(
        size: size,
        activeSize: const Size(18.0, 9.0),
        activeColor: AppColors.mainColor,
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }
}
