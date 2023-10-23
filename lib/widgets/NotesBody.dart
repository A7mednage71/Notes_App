import 'package:flutter/widgets.dart';
import 'package:notes_app/widgets/ListBuilder.dart';
import 'package:notes_app/widgets/customRow.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 35,
        ),
        Custom_Row(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Listviewbuildernotes(),
          ),
        )
      ],
    );
  }
}
