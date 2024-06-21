import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
