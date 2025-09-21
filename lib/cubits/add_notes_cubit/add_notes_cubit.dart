import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/add_notes_cubit/add_notes_states.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color color = Color(0xff3366CC);
  addNote(NoteModel note) async {
    note.color = color!.toARGB32();
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      await notesBox.add(note);
      print("${notesBox.length}");
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNotefaliure(e.toString()));
    }
  }
}
