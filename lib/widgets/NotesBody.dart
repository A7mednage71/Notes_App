import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/widgets/ListBuilder.dart';
import 'package:notes_app/widgets/customRow.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({
    super.key,
  });

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).getAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Custom_Row(
          text: 'Notes',
          icon: Icon(Icons.search),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Listviewbuildernotes(),
          ),
        )
      ],
    );
  }
}
