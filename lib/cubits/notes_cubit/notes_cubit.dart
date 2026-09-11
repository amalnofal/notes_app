import 'package:hive/hive.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  String searchQuery = '';

  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>("notes_box");
    notes = notesBox.values.toList().reversed.toList();
    emit(NotesSuccess());
  }

  void searchNotes(String query) {
    searchQuery = query;
    var notesBox = Hive.box<NoteModel>("notes_box");

    if (query.isEmpty) {
      // no search
      notes = [];
    } else {
      // search
      notes = notesBox.values
          .where((note) {
            return note.title.toLowerCase().contains(query.toLowerCase()) ||
                note.subTitle.toLowerCase().contains(query.toLowerCase());
          })
          .toList()
          .reversed
          .toList();
    }

    emit(NotesSuccess());
  }
}
