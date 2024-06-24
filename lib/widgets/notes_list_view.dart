import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
    required this.notes,
  });
  final List<NoteModel>? notes;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BlocProvider.of<NotesCubit>(context).notes?.length ?? 0,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.only(
          bottom: 5,
          top: 4,
        ),
        child: NoteItem(),
      ),
    );
  }
}
