import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

class EditNote extends StatefulWidget {
  EditNote({super.key, required this.note});
  NoteModel note;
  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String title = '', content = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          children: [
            CustomAppBar(
              title: "Edit note",
              icon: Icons.check_outlined,
              onTap: () {
                widget.note.title = (title != '') ? title : widget.note.title;
                widget.note.subTitle =
                    (content != '') ? content : widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              onChanged: (data) {
                title = data;
              },
              hint: widget.note.title,
              maxLines: 1,
              top: 30,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              onChanged: (data) {
                content = data;
              },
              hint: widget.note.subTitle,
              maxLines: 10,
              top: 26,
            ),
          ],
        ),
      ),
    );
  }
}
