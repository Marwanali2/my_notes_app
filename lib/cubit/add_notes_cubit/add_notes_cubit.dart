import '../../models/note_model.dart';
import 'add_notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(AddNoteInitialState());

  addNote(NoteModel note) {}
}
