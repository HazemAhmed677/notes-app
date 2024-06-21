import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const CustomAppBar(),
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: NoteItem(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
