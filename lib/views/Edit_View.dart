import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';

import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/EditNoteColorsListview.dart';

import '../widgets/customRow.dart';

class Edit_view extends StatefulWidget {
  const Edit_view({super.key, required this.model});

  final Note_Model model;

  @override
  State<Edit_view> createState() => _Edit_viewState();
}

class _Edit_viewState extends State<Edit_view> {
  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Custom_Row(
              text: 'Edit Note',
              icon: const Icon(Icons.check),
              onpress: () {
                widget.model.title = title ?? widget.model.title;
                widget.model.subtitle = subtitle ?? widget.model.subtitle;
                widget.model.save();
                BlocProvider.of<NoteCubit>(context).getAllNotes();
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Custom_Textfield(
              onChanged: (date) {
                title = date;
              },
              text: widget.model.title,
              lines: 1,
            ),
            const SizedBox(
              height: 16,
            ),
            Custom_Textfield(
              onChanged: (data) {
                subtitle = data;
              },
              text: widget.model.subtitle,
              lines: 5,
            ),
            const SizedBox(
              height: 16,
            ),
            EditNoteScrolColors(
              note: widget.model,
            )
          ],
        ),
      ),
    );
  }
}
