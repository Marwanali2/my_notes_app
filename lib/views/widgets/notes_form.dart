import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_notes_app/models/note_model.dart';
import '../../cubit/cubits/add_notes_cubit/add_notes_cubit.dart';
import '../../cubit/cubits/add_notes_cubit/add_notes_state.dart';
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) =>
             CustomButton(
              isLoading: state is AddNoteLoadingState?true:false,
              text: 'Add',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                 formKey.currentState!.save();
                 NoteModel noteModel=NoteModel(title: fTitle!, subTitle: fSubTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                 BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  // showSnackBar(
                  //     context, 'Success !', Colors.green);
                } else {
                   autovalidateMode=AutovalidateMode.always; // لو الانبوت كان نلل و جيت ادخل داتا التيكت فيلد مش هيبقي احمر
                  setState(() {

                  });
                }
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
