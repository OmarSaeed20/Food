import 'package:flutter/material.dart';
import 'dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData? icon;
  final Color? backgroundColors;
  final Color? color;
  final double? size;
  final double? iconSize;

  const AppIcon({
    Key? key,
    required this.icon,
    this.backgroundColors = const Color(0xFFfcf4e4),
    this.color = const Color(0xFF756d54),
    this.size = 40,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size! / 2),
        color: backgroundColors,
      ),
      child: Icon(
        icon,
        color: color,
        size: iconSize ?? Dimensions.size16,
      ),
    );
  }
}
