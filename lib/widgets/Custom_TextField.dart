import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Custom_Textfield extends StatelessWidget {
  const Custom_Textfield({
    super.key,
    required this.text,
    required this.lines,
    this.onSaved,
  });

  final String text;
  final int lines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Please enter a value';
        }
        return null;
      },
      maxLines: lines,
      cursorColor: const Color(0xff52EBD7),
      decoration: InputDecoration(
        border: OutlineBorder(),
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
