import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_fab.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import 'package:notes_app/widgets/gradient_scaffold.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const GradientScaffold(
        floatingActionButton: CustomFab(),
        body: NotesViewBody(),
      ),
    );
  }
}
