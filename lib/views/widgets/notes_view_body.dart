import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/custom_app_bar.dart';

import 'custom_notes_item.dart';
import 'notes_list_view.dart';
class NotesViewBody extends StatelessWidget{
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          const CustomAppBar(),
          Expanded(child: const NotesListView()),
        ],
      ),
    );
  }

}