import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Custom_Textfield extends StatelessWidget {
  const Custom_Textfield({
    super.key,
    required this.text,
    required this.lines,
  });

  final String text;
  final int lines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: lines,
      cursorColor: const Color(0xff52EBD7),
      decoration: InputDecoration(
        focusedBorder: OutlineBorder(const Color(0xff52EBD7)),
        enabledBorder: OutlineBorder(),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color(0xff52EBD7),
        ),
      ),
    );
  }

  OutlineInputBorder OutlineBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
