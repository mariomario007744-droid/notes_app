abstract class AddNotesStates {}

class AddNoteInitial extends AddNotesStates {}

class AddNoteLoading extends AddNotesStates {}

class AddNoteSuccess extends AddNotesStates {}

class AddNotefaliure extends AddNotesStates {
  final String errMessage;

  AddNotefaliure(this.errMessage);
}
