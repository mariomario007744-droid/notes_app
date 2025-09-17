import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return EditNoteView();
                  },
                ),
              );
            },
            child: NoteItem(),
          ),
        );
      },
    );
  }
}
