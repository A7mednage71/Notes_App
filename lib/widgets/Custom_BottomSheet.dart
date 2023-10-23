import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Custom_Material_Buttom.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';

class BottomSheetwidget extends StatelessWidget {
  const BottomSheetwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Custom_Textfield(
              text: 'Title',
              lines: 1,
            ),
            SizedBox(
              height: 30,
            ),
            Custom_Textfield(
              text: 'Content',
              lines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            Csutom_Material_Buttom(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
