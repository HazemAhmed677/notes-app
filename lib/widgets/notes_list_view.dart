import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  NotesListView({
    super.key,
    required this.notes,
  });
  List<NoteModel>? notes;

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        return (state is SuccessState)
            ? ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: widget.notes?.length ?? 0,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    top: 4,
                  ),
                  child: NoteItem(
                    note: widget.notes![index],
                  ),
                ),
              )
            : const SizedBox();
      },
    );
  }
}
