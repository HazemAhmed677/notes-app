import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.8),
            borderRadius: BorderRadius.circular(50)),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
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
