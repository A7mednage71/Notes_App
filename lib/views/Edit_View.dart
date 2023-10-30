import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/Add_note_cubit/Add_note_cubit.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/ColorList.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';
import 'package:notes_app/widgets/Note_Item.dart';

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
            EditNoteScrolColors(
              note: widget.model,
            )
          ],
        ),
      ),
    );
  }
}

class EditNoteScrolColors extends StatefulWidget {
  const EditNoteScrolColors({super.key, required this.note});

  final Note_Model note;

  @override
  State<EditNoteScrolColors> createState() => _EditNoteScrolColorsState();
}

class _EditNoteScrolColorsState extends State<EditNoteScrolColors> {
  List<Color> colors = const [
    Color(0xffFFCD7A),
    Color(0xff044B7F),
    Color(0xff107E7D),
    Color(0xffFACB0F),
    Color(0xff610345),
    Color(0xff99D17B),
    Color(0xffC96480),
    Color(0xff4AC3BA),
    Color(0xffCDD3D5),
    Color(0xffF85A3E),
  ];

  late int indexactiveSircle;

  @override
  void initState() {
    indexactiveSircle = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: InkWell(
              onTap: () {
                indexactiveSircle = index;
                widget.note.color = colors[indexactiveSircle].value;
                setState(() {});
              },
              child: coloritem(
                iSselected: indexactiveSircle == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
