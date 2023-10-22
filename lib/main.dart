import 'package:flutter/material.dart';
import 'package:notes_app/Pages/Home_page.dart';

void main() {
  runApp(const Note_App());
}

class Note_App extends StatelessWidget {
  const Note_App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Home_page(),
    );
  }
}