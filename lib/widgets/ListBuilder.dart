import 'package:flutter/material.dart';
import 'package:notes_app/views/Edit_View.dart';
import 'package:notes_app/widgets/Note_Item.dart';

class Listviewbuildernotes extends StatelessWidget {
  const Listviewbuildernotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Edit_view();
                  },
                ),
              );
            },
            child: const note_item(),
          ),
        );
      },
    );
  }
}
