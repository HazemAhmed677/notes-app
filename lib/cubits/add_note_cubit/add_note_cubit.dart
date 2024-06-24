import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(InitialAddNoteState());
}
// Pattern of creating cubit
// create states
// create cubit
// create funcion
// provide cubit
// integrate cubit
// trigger cubit