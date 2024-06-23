import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: kPrimaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor.withOpacity(0.9),
        ),
        child: const Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
