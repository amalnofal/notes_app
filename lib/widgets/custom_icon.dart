import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  final Color backgroundColor;
  final double size;
  final double iconSize;
  final double borderRadius;

  const CustomIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.backgroundColor = const Color(0x0FFFFFFF),
    this.size = 45,
    this.iconSize = 24,
    this.borderRadius = 16,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Icon(icon, size: iconSize, color: Colors.white),
        ),
      ),
    );
  }
}
