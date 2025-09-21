import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/EditNoteBody.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel note;

  const EditNoteView({required this.note});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditNoteViewBody(
      note: note,
    ));
  }
}
