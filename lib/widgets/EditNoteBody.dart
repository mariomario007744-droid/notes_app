import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  TextEditingController? controllerTitel;
  TextEditingController? controllerSubTitel;
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(
              titel: "Edit Notes",
              icon: Icons.check,
              onPressed: () async {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                if (formKey.currentState!.validate()) {
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fechAllNotes();
                  Navigator.pop(context);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            SizedBox(height: 50),
            CustomTextField(
              controller: TextEditingController(text: widget.note.title),
              hint: 'Edit Titel',
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustomTextField(
              controller: TextEditingController(text: widget.note.subTitle),
              hint: 'Edit Content',
              maxLines: 5,
              onChanged: (value) {
                subTitle = value;
              },
            ),
            SizedBox(height: 16),
            EditNoteColorList(note: widget.note),
          ],
        ),
      ),
    );
  }
}
