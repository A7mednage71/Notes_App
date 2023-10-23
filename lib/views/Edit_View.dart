import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';

import '../widgets/customRow.dart';

class Edit_view extends StatelessWidget {
  const Edit_view({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Custom_Row(
              text: 'Edit Note',
              icon: Icon(Icons.check),
            ),
            SizedBox(
              height: 30,
            ),
            Custom_Textfield(text: 'Title', lines: 1),
            SizedBox(
              height: 16,
            ),
            Custom_Textfield(text: 'Title', lines: 5),
          ],
        ),
      ),
    );
  }
}
