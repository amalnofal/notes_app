import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: const [
          CustomAppBar(),
          CustomNotesItem(
            title: "Flutter tips",
            subTitle: "Build your Career with Tharwat Samy",
          ),
        ],
      ),
    );
  }
}
