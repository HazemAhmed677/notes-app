import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/color_item.dart';

class ListOfColors extends StatefulWidget {
  const ListOfColors({super.key});
  @override
  State<ListOfColors> createState() => _ListOfColorsState();
}

class _ListOfColorsState extends State<ListOfColors> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = BlocProvider.of<NotesCubit>(context).currentIndex;
    List<Color> colorsList = BlocProvider.of<NotesCubit>(context).colorsList;
    return SizedBox(
      height: 72,
      child: ListView.builder(
        itemCount: colorsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              BlocProvider.of<NotesCubit>(context).currentIndex = index;
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
