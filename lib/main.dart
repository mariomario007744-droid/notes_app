import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: NotesView(),
      ),
    );
  }
}
