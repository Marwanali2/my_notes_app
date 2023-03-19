abstract class NotesState {}

class AddNoteInitialState extends NotesState {}

class AddNoteLoadingState extends NotesState {}

class AddNoteSuccessState extends NotesState {}

class AddNoteFailureState extends NotesState {
  String? errorMessage;

  AddNoteFailureState({required this.errorMessage});
}
