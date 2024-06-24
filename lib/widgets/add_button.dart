import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
    required this.onTep,
  });
  final Function()? onTep;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTep,
      splashColor: kPrimaryColor,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kPrimaryColor.withOpacity(0.9),
        ),
        child: BlocBuilder<AddNoteCubit, AddNoteStates>(
          builder: (context, state) {
            return Center(
              child: (state is LoadingAddNoteState)
                  ? const SizedBox(
                      height: 30,
                      width: 30,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    )
                  : const Text(
                      'Add',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
