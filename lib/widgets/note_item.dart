import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(14),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditNote(),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 22, bottom: 14, left: 16),
                child: Text(
                  note.title,
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                child: SizedBox(
                  width: 30,
                  child: GestureDetector(
                    onTap: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    child: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 22),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 26,
                bottom: 20,
              ),
              child: Text(
                kFormatter.format(DateTime.parse(note.date)),
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
