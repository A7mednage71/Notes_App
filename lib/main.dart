import 'package:flutter/material.dart';
import 'package:notes_app/views/Home_page.dart';

void main() {
  runApp(const Note_App());
}

class Note_App extends StatelessWidget {
  const Note_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: const Notes_View(),
    );
  }
}
