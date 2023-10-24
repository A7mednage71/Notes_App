import 'package:flutter/material.dart';

class Csutom_Material_Buttom extends StatelessWidget {
  const Csutom_Material_Buttom({
    super.key, required this.onpress,
  });

  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      color: const Color(0xff52EBD7),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      onPressed: onpress,
      child: const Text(
        'Add Note',
        style: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
