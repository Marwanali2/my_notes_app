import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/notes_form.dart';

import 'custom_app_bar.dart';
class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
           CustomAppBar(icon: Icons.check, text: 'Edit Note',),
          NotesForm(),
        ],
      ),
    );
  }
}
