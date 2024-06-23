import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_bottom_modal_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 9, 206, 220),
          borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(30)),
            context: context,
            builder: (context) => const CustomBottomModalSheet(),
          );
        },
        icon: const Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
      ),
    );
  }
}
