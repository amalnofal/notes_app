import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_fab.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFab(),
      body: const SafeArea(child: NotesViewBody()),
    );
  }
}
