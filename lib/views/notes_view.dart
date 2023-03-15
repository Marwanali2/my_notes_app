import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/notes_view_body.dart';

import 'widgets/add_notes_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet(); // هنا مينفعش تحط الكود علطول مفروض تحطه في كلاس و تستدعيه هنا علشان لما يتعمل تعديل يظهر علطول
                },
              );
            },
            child: const Icon(Icons.add),
          ),
          body: const NotesViewBody()),
    );
  }
}
