import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final double titleSize;
  final bool showBackButton;
  final Color? trailingIconColor;
  final Color? trailingIconBgColor;
  final void Function()? onTap;

  const CustomAppBar({
    super.key,
    required this.title,
    this.subtitle,
    required this.icon,
    this.titleSize = 24,
    this.showBackButton = false,
    this.trailingIconColor,
    this.trailingIconBgColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBackButton) ...[
          CustomIcon(
            icon: Icons.arrow_back_ios_new,
            onTap: () => Navigator.pop(context),
          ),
          const SizedBox(width: 16),
        ],
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (subtitle != null)
              Text(
                subtitle!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withValues(alpha: 0.4),
                  fontWeight: FontWeight.w600,
                ),
              ),
            Text(
              title,
              style: TextStyle(
                fontSize: titleSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomIcon(
          icon: icon,
          iconColor: trailingIconColor ?? Colors.white,
          backgroundColor: trailingIconBgColor ?? const Color(0x0FFFFFFF),
          onTap: onTap,
        ),
      ],
    );
  }
}
