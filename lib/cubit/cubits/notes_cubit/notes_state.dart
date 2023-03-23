import '../../../models/note_model.dart';

abstract class NoteState {}

class NoteInitialState extends NoteState {}

class NoteLoadingState extends NoteState {}

class NoteSuccessState extends NoteState {
  final List<NoteModel> notes;

  NoteSuccessState(this.notes);

}

class NoteFailureState extends NoteState {
  String? errorMessage;

  NoteFailureState({required this.errorMessage});
}
