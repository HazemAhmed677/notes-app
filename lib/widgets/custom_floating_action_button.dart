import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_bottom_modal_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            clipBehavior: Clip.hardEdge,
            isScrollControlled: true,
            sheetAnimationStyle: AnimationStyle(
              curve: Curves.easeIn,
              duration: const Duration(
                milliseconds: 350,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20), topEnd: Radius.circular(20)),
            ),
            context: context,
            builder: (context) => const AddBottomSheet(),
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
