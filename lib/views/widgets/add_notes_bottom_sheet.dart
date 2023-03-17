import 'package:flutter/material.dart';
import 'package:my_notes_app/views/widgets/notes_form.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      //	- مينفعش استخدم spacer() بداخل ال single child scroll view لان الspacer بيوسع الكونتينر لكن ال single بيعمل shrink يعني بيضغط المحتوي فكده فيه حاجتين عكس بعض
      // 	- يعني لما اعوز اعمل scrolling  هستخدم sized box  مش spacer
      child: NotesForm(),
    );
  }
}

