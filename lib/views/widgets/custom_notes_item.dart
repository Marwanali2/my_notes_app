import 'package:flutter/material.dart';
import 'package:my_notes_app/models/note_model.dart';
import 'package:my_notes_app/views/widgets/showSnackBar.dart';

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
            builder: (context) => EditNotesView(),
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
                  note.subTitle,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
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
