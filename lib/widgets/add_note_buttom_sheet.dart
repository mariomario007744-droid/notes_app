import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_buttom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(
            hint: "Titel",
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: "Content",
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 32),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.validate();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
