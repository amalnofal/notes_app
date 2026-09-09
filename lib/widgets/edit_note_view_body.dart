import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;
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
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subtitle ?? widget.note.subTitle;
              widget.note.save();

              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            hintText: "Title",
            initialValue: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: "Content",
            initialValue: widget.note.subTitle,
            maxLines: 8,
            onChanged: (value) {
              subtitle = value;
            },
          ),
        ],
      ),
    );
  }
}
