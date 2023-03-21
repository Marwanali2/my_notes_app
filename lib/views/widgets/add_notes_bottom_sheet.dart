import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:my_notes_app/cubit/add_notes_cubit/add_notes_state.dart';
import 'package:my_notes_app/views/widgets/notes_form.dart';
import '../../cubit/add_notes_cubit/add_notes_cubit.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
     create:  (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (BuildContext context, Object? state) {
          if (state is AddNoteSuccessState) {
            Navigator.pop(context);
          } else if (state is AddNoteFailureState) {
            print('failed ${state.errorMessage}');
          }
        },
        builder: (BuildContext context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          //	- مينفعش استخدم spacer() بداخل ال single child scroll view لان الspacer بيوسع الكونتينر لكن ال single بيعمل shrink يعني بيضغط المحتوي فكده فيه حاجتين عكس بعض
          // 	- يعني لما اعوز اعمل scrolling  هستخدم sized box  مش spacer
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (BuildContext context, Object? state) {},
            builder: (BuildContext context, state) => ModalProgressHUD(
              inAsyncCall: state is AddNoteLoadingState ? true : false,
              child: SingleChildScrollView(child: NotesForm()),
            ),
          ),
        ),
      ),
    );
  }
}
