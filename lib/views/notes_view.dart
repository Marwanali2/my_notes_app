import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/notes_view_body.dart';
class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
        body:NotesViewBody()
      ),
    );
  }
}

