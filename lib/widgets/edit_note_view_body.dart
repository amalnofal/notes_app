import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            showBackButton: true,
            trailingIconColor: Color(0xFFA78BFA),
            trailingIconBgColor: Color(0xFFA78BFA).withValues(alpha: 0.15),
          ),
          SizedBox(height: 20),
          CustomTextField(hintText: "Title"),
          SizedBox(height: 16),
          CustomTextField(hintText: "Content", maxLines: 8),
        ],
      ),
    );
  }
}
