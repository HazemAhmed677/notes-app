import 'package:flutter/material.dart';

class ListOfColors extends StatefulWidget {
  const ListOfColors({super.key});

  @override
  State<ListOfColors> createState() => _ListOfColorsState();
}

class _ListOfColorsState extends State<ListOfColors> {
  List<Color> colorsList = [
    Colors.red,
    Colors.pink,
    Colors.yellow,
    Colors.purple,
    Colors.green,
    Colors.white,
    Colors.black,
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return (index < colorsList.length - 1)
              ? Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(90),
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: colorsList[index].withOpacity(0.9),
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 40,
                  backgroundColor: colorsList[index].withOpacity(0.9),
                );
        },
      ),
    );
  }
}
