import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    List<NoteModel>? notes;
    return BlocBuilder<NotesCubit, NotesStates>(
      builder: (context, state) {
        notes = BlocProvider.of<NotesCubit>(context).notes;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const CustomAppBar(
                title: "Notes",
                icon: Icons.search_rounded,
              ),
              Expanded(
                child: NotesListView(
                  notes: notes,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
