import 'package:flutter/cupertino.dart';

import '../utils/dimensions.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgraoundColor;
  final Color iconColor;
  final double size;
  final double iconSize;

  const AppIcon({Key? key,
  required this.icon,
    this.backgraoundColor=const Color(0xfffcf4e4),
    this.iconColor=const Color(0xff756d54),
    this.size=40,
    this.iconSize=16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgraoundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
          size: iconSize,
      ),
    );
  }
}
