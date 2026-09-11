import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_icon.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          Row(
            children: [
              CustomIcon(
                icon: Icons.arrow_back_ios_new,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(width: 8),

              Expanded(
                child: CustomTextField(
                  hintText: "Search notes...",
                  onChanged: (value) {
                    BlocProvider.of<NotesCubit>(context).searchNotes(value ?? "");
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          
          Expanded(
            child: BlocBuilder<NotesCubit, NotesState>(
              builder: (context, state) {
                var cubit = BlocProvider.of<NotesCubit>(context);

                if (cubit.searchQuery.isNotEmpty && (cubit.notes?.isEmpty ?? true)) {
                  return Center(
                    child: Text(
                      'No results found',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withValues(alpha: 0.5),
                      ),
                    ),
                  );
                }

                return const NotesListView();
              },
            ),
          ),
        ],
      ),
    );
  }
}