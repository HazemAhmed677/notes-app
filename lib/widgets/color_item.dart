import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.index,
    required this.isActive,
  });
  final int index;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = kColorsList;
    return (isActive)
        ? SizedBox(
            height: 72,
            child: CircleAvatar(
              radius: 42,
              backgroundColor: Colors.white,
              child: SizedBox(
                height: 66,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: colorsList[index],
                ),
              ),
            ),
          )
        : SizedBox(
            height: 66,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: colorsList[index],
            ),
          );
  }
}
