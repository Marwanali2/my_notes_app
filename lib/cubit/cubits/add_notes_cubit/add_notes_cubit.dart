import 'dart:ui';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants.dart';

import '../../../models/note_model.dart';
import 'add_notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color?color= const Color(0xffE18B43);
  addNote(NoteModel note) async {
    note.color=color!.value;
    emit(AddNoteLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } on Exception catch (e) {
      emit(AddNoteFailureState(errorMessage: e.toString()));
    }
  }
}
