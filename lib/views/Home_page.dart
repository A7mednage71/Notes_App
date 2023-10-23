import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Note_Item.dart';
import 'package:notes_app/widgets/customRow.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Custom_Row(),
            SizedBox(
              height: 15,
            ),
            note_item()
          ],
        ),
      ),
    );
  }
}
