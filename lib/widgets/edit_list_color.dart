import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item.dart';

// ignore: must_be_immutable
class EditListColor extends StatefulWidget {
  EditListColor({super.key, required this.note});
  NoteModel note;
  @override
  State<EditListColor> createState() => _EditListColorState();
}

class _EditListColorState extends State<EditListColor> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = kColorsList.indexOf(Color(widget.note.color));
    List<Color> colorsList = kColorsList;
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColorsList[index].value;
              setState(() {});
            },
            child: ColorItem(
              index: index,
              isActive: (currentIndex == index),
            ),
          );
        },
      ),
    );
  }
}
