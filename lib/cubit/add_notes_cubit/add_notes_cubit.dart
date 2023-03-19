import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants.dart';

import '../../models/note_model.dart';
import 'add_notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } on Exception catch (e) {
      AddNoteFailureState(errorMessage: e.toString());
    }
  }
}
