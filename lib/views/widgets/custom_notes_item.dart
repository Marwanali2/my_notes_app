import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/views/widgets/showSnackBar.dart';

import '../../cubit/cubits/notes_cubit/notes_cubit.dart';
import '../notes_edit_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNotesView(note: note),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  note.content,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes(); //  when you emit a new state, any widgets that are listening to the BLoC or Cubit will be notified and rebuilt with the new state
                  // when execute fetchAllNotes it refresh notes and emit success state which rebuild the custom note item
                  showSnackBar(
                    context,
                    'The note has been deleted',
                    Colors.red,
                  );
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(color: Colors.black.withOpacity(0.4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
