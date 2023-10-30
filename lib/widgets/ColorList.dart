import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/Add_note_cubit/Add_note_cubit.dart';

class ColorListview extends StatefulWidget {
  ColorListview({super.key});

  @override
  State<ColorListview> createState() => _ColorListviewState();
}

class _ColorListviewState extends State<ColorListview> {
  int indexactiveSircle = 0;

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
    Color(0xffF85A3E)
  ];

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
                BlocProvider.of<AddNotecubit>(context).color = colors[index];
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

class coloritem extends StatelessWidget {
  const coloritem({
    super.key,
    required this.iSselected,
    required this.color,
  });

  final bool iSselected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return iSselected
        ? CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 35,
            backgroundColor: color,
          );
  }
}
