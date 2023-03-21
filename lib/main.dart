import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_notes_app/cubit/add_notes_cubit/add_notes_cubit.dart';
import 'package:my_notes_app/simple_bloc_observer.dart';
import 'package:my_notes_app/views/notes_view.dart';

import 'constants.dart';
import 'models/note_model.dart';

void main() async {
  await Hive
      .initFlutter(); //This initializes Hive and prepares it for use in your application.
  await Hive.openBox<NoteModel>(
      kNotesBox); //Open a Hive box by calling await Hive.openBox('box_name'). This creates or opens a Hive box with the specified name
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer=SimpleBlocObserver();
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddNoteCubit(),)
      ],
      child: MaterialApp(
        title: 'Notes App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.dark,
          //fontFamily: 'Poppins'
        ),
        home: const NotesView(),
      ),
    );
  }
}
