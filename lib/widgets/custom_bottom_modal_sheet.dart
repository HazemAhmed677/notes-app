import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(children: [
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
            top: 24,
          ),
          SizedBox(
            height: 50,
          ),
          AddButton(),
        ]),
      ),
    );
  }
}
