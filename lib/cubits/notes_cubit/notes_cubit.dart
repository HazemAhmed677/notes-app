import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesStates> {
  NotesCubit() : super(InitialNoteState());
  int currentIndex = 0;
  List<Color> colorsList = const [
    Color(0xfffb8b24),
    Color(0xfff4d35e),
    Color(0xffe29578),
    Color(0xffffffff),
    Color(0xffcbf3f0),
    Color(0xff2ec4b6)
  ];
  List<NoteModel>? notes;
  void fetchAllNotes() {
    var notesOfBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesOfBox.values.toList();
    emit(SuccessState());
  }
}
