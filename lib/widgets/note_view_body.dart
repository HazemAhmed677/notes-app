import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          const CustomAppBar(
            title: "Notes",
            icon: Icons.search_rounded,
          ),
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(
                bottom: 5,
                top: 4,
              ),
              child: NoteItem(),
            ),
          ))
        ],
      ),
    );
  }
}
