import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomNotesItem extends StatelessWidget {
  final String title;
  final String subTitle;

  const CustomNotesItem({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFF8E51FF),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                subTitle,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.55),
                  fontSize: 14,
                ),
              ),
            ),
            trailing: CustomIcon(
              icon: Icons.delete_outline,
              backgroundColor: Colors.white.withValues(alpha: 0.12),
              size: 36,
              iconSize: 18,
              borderRadius: 12,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "May 21, 2022",
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.55),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
