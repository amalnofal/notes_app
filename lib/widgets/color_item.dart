import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;

  const ColorItem({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: isActive ? Border.all(color: color) : null,
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: color.withValues(alpha: 0.5),
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                  spreadRadius: 0,
                ),
              ]
            : null,
      ),
      child: isActive
          ? const Icon(Icons.check, color: Colors.white, size: 18)
          : null,
    );
  }
}
