import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesCubit> {
  NotesCubit(super.initialState);
  List<NoteModel>? notes;
  fetchAllNotes() {
    Box<NoteModel> notesOfBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesOfBox.values.toList();
  }
}
