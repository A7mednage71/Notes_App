import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';

class note_item extends StatelessWidget {
  const note_item({super.key, required this.model});
  final Note_Model model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(model.color),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(
              left: 22,
              top: 24,
              bottom: 24,
            ),
            title: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                model.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
            ),
            subtitle: Text(
              model.subtitle,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
            trailing: IconButton(
              padding: const EdgeInsets.only(right: 22),
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {
                model.delete();
                BlocProvider.of<NoteCubit>(context).getAllNotes();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22, bottom: 24),
            child: Text(
              model.date,
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
