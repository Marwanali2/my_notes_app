import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';
class NotesForm extends StatelessWidget {
  const NotesForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomTextField(
            label: 'Title',
            hintText: 'Enter Note Title',
          ),
          SizedBox(height: 40,),
          CustomTextField(
            label: 'Context',
            hintText: 'Enter Note Context',
            maxLines: 10,
          ),
          SizedBox(height: 50,),
          CustomButton(text: 'Add',onPressed: (){},),
          SizedBox(height:20,),
        ],
      ),
    );
  }
}
