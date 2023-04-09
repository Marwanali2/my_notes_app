import 'package:flutter/material.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/views/widgets/edit_notes_view_body.dart';
class EditNotesView extends StatelessWidget {
   const EditNotesView({Key? key, required this.note}) : super(key: key);
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(note: note,),
      ),
    );
  }
}
