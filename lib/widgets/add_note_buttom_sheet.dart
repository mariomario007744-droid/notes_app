import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextField(hint: "Titel"),
            SizedBox(height: 16),
            CustomTextField(hint: "Content", maxLines: 5),
            SizedBox(height: 32),
            CustomButtom(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
