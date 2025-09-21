import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/const.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fechAllNotes(){

        try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      emit(NotesSuccess(notes: notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
