import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(titel: "Edit Notes", icon: Icons.check),
          SizedBox(height: 50),
          CustomTextField(hint: "Titel"),
          SizedBox(height: 16),
          CustomTextField(hint: "Content", maxLines: 5),
        ],
      ),
    );
  }
}
