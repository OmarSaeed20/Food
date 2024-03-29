import 'package:flutter/material.dart';
import 'package:foodd/components/size_config.dart';
 import '../utils/dimensions.dart';
import 'small_text.dart';


class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final double? iconsSize;
  final Color iconColor;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    this.iconsSize,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: iconsSize ?? Dimensions.size20,
        ),
        SizedBox(width:getProportionateScreenWidth(5.0)),
        CustomSmallText(
          text: text,
        ),
      ],
    );
  }
}
