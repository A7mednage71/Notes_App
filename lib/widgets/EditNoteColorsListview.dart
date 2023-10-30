import 'package:flutter/material.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/ColorList.dart';

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
