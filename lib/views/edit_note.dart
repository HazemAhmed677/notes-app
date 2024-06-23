import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit note",
              icon: Icons.check_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
