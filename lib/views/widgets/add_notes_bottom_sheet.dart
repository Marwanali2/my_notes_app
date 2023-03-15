import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
         SizedBox(height: 30,),
          CustomTextField(
            label: 'Title',
            hintText: 'Enter Note Title',
          ),
          Spacer(),
          CustomTextField(
            label: 'Context',
            hintText: 'Enter Note Context',
            maxLines: 5,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
