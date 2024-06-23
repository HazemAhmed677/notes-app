import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 34),
            child: CustomTextField(hint: "Title"),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 6,
            top: 32,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: AddButton(),
          ),
        ]),
      ),
    );
  }
}
