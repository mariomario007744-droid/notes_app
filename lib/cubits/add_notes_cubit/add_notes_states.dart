abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNotefaliure extends AddNoteState {
  final String errMessage;

  AddNotefaliure(this.errMessage);
}
