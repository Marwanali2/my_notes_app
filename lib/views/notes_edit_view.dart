import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/edit_notes_view_body.dart';
class EditNotesView extends StatelessWidget {
  const EditNotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNotesViewBody(),
      ),
    );
  }
}
