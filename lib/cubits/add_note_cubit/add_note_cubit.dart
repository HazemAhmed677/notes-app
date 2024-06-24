import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(InitialAddNoteState());

  addNote(NoteModel note) async {
    emit(LoadingAddNoteState());
    var noteBox = Hive.box<NoteModel>(kNotesBox);
    try {
      await noteBox.add(note);
      emit(SuccessAddNoteState());
    } catch (e) {
      emit(FailureAddNoteState(e.toString()));
    }
  }
}
// Pattern of creating cubit
// create states
// create cubit
// create funcion
// provide cubit
// integrate cubit
// trigger cubit