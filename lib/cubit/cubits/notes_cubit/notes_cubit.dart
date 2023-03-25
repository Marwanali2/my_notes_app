import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/constants.dart';

import '../../../models/note_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'notes_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitialState());
  List<NoteModel>?notes;
  fetchAllNotes()async{


        var notesBox = Hive.box<NoteModel>(kNotesBox);
        notes=notesBox.values.toList();
      //  emit(NoteSuccessState(notes!));

  }

  // fetchAllNotes(NoteModel note) async {
  //   emit(NoteLoadingState());
  //   try {
  //     var notesBox = Hive.box<NoteModel>(kNotesBox);
  //     await notesBox.add(note);
  //     emit(NoteSuccessState());
  //   } on Exception catch (e) {
  //     emit(NoteFailureState(errorMessage: e.toString()));
  //   }
  // }
}
