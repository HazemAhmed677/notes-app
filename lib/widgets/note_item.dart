import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/constants.dart';
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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNote(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFCC82),
          borderRadius: BorderRadius.circular(14),
        ),
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
              trailing: const Padding(
                padding: EdgeInsets.only(
                  bottom: 50,
                ),
                child: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 32,
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
