import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit_state.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/views/Edit_View.dart';
import 'package:notes_app/widgets/Note_Item.dart';

class Listviewbuildernotes extends StatelessWidget {
  const Listviewbuildernotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, Notestate>(
      builder: (context, state) {
        List<Note_Model> notes =
            BlocProvider.of<NoteCubit>(context).notes ?? [];
        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: notes.length,
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
                child: note_item(
                  model: notes[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
