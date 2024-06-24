import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: AddNote(),
      ),
    );
  }
}
