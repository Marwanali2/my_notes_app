import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/note_model.dart';
import 'colors_list_view.dart';
import 'edit_notes_view_body.dart';
class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({Key? key, required this.note}) : super(key: key);
  final NoteModel note;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int currentIndex ; // late make variable non-nullable
  @override
  void initState(){ // ببتنفذ اول حاجة خالص
    currentIndex=kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2,
      // لان السيركل نصف قطرها ب 40 و بالتالي هعمل ارتفاع الليست ضعف نصف القطر
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                newColor = kColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColors[index],
              ),
            ),
          );
        },
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}