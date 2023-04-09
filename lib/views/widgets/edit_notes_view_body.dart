import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/views/widgets/showSnackBar.dart';

import '../../cubit/cubits/notes_cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomAppBar(
              icon: Icons.check,
              text: 'Edit Note',
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();

                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();

                Navigator.pop(context);
                snackStatus(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
              label: 'Title',
              hintText: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              label: 'Context',
              hintText: widget.note.content,
              maxLines: 10,
              onChanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }

  void snackStatus(BuildContext context) {
    if (widget.note.title == title &&
        widget.note.content == content) {
      showSnackBar(
        context,
        'The note title and content has been edited',
        Colors.green,
      );
    } else if (widget.note.title == title &&
        widget.note.content != content) {
      showSnackBar(
        context,
        'The note title only has been edited',
        Colors.green,
      );
    } else if (widget.note.title != title &&
        widget.note.content == content) {
      showSnackBar(
        context,
        'The note content only has been edited',
        Colors.green,
      );
    } else {
      showSnackBar(
        context,
        'The note has not been edited',
        Colors.red,
      );
    }
  }
}
