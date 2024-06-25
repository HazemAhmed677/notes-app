import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_button.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';
import 'package:notes_app/widgets/list_of_colors.dart';

class AddNote extends StatefulWidget {
  const AddNote({
    super.key,
  });

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 34,
              ),
              child: CustomTextFormField(
                onSaved: (data) {
                  title = data;
                },
                validator: (data) {
                  if (data?.isEmpty ?? true) {
                    return 'Please enter title';
                  }
                  return null;
                },
                hint: "Title",
                top: 28,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              onSaved: (data) {
                content = data;
              },
              validator: (data) {
                if (data?.isEmpty ?? true) {
                  return 'Please enter Content';
                }
                return null;
              },
              hint: "Content",
              maxLines: 6,
              top: 32,
            ),
            const SizedBox(
              height: 20,
            ),
            const ListOfColors(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: AddButton(
                onTep: () async {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteModel note = NoteModel(
                      title: title!,
                      subTitle: content!,
                      color: Colors.blue.value,
                      date: kFormatter.format(DateTime.now()).toString(),
                    );
                    await BlocProvider.of<AddNoteCubit>(context).addNote(note);
                  }
                  autovalidateMode = AutovalidateMode.always;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
