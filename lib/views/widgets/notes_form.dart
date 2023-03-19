import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/showSnackBar.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class NotesForm extends StatefulWidget {
  NotesForm({Key? key}) : super(key: key);

  @override
  State<NotesForm> createState() => _NotesFormState();
}

class _NotesFormState extends State<NotesForm> {
  String? fTitle;

  String? fSubTitle;

  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomTextField(
                label: 'Title',
                hintText: 'Enter Note Title',
                onChanged: (data) {
                  fTitle = data;
                }),
            SizedBox(
              height: 40,
            ),
            CustomTextField(
              label: 'Context',
              hintText: 'Enter Note Context',
              maxLines: 10,
              onChanged: (data) {
                fSubTitle = data;
              },
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
              text: 'Add',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                 formKey.currentState!.save();
                  showSnackBar(
                      context, 'Success !', Colors.green);
                } else {
                   autovalidateMode=AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
