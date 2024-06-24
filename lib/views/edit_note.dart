import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

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
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hint: 'Title',
              maxLines: 1,
              top: 30,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hint: 'Content',
              maxLines: 10,
              top: 28,
            ),
          ],
        ),
      ),
    );
  }
}
