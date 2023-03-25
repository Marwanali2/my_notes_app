import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/cubit/cubits/notes_cubit/notes_cubit.dart';
import 'package:my_notes_app/cubit/cubits/notes_cubit/notes_state.dart';
import 'package:my_notes_app/models/note_model.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: ( context, state) {
        List<NoteModel> ?notes=BlocProvider.of<NoteCubit>(context).notes;
     return Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: ListView.builder(
          itemCount:notes?.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: NotesItem(),
            );
          },
        ),
      );
  },
    );
  }
}
