import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_app/Cubits/Add_note_cubit/Add_note_cubit.dart';
import 'package:notes_app/Cubits/Add_note_cubit/Add_note_state.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit.dart';
import 'package:notes_app/models/Note_Model.dart';
import 'package:notes_app/widgets/ColorList.dart';
import 'package:notes_app/widgets/Custom_Material_Buttom.dart';
import 'package:notes_app/widgets/Custom_TextField.dart';

class BottomSheetwidget extends StatefulWidget {
  const BottomSheetwidget({
    super.key,
  });

  @override
  State<BottomSheetwidget> createState() => _BottomSheetwidgetState();
}

class _BottomSheetwidgetState extends State<BottomSheetwidget> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotecubit(),
      child: BlocConsumer<AddNotecubit, AddNoteState>(
        listener: (context, state) {
          // if (state is AddNoteFailure) {
          //   print('Failed to add ${state.message}');
          // }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NoteCubit>(context).getAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: SingleChildScrollView(
                child: Form(
                  key: formkey,
                  autovalidateMode: autovalidateMode,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Custom_Textfield(
                        onSaved: (data) {
                          title = data;
                        },
                        text: 'Title',
                        lines: 1,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Custom_Textfield(
                        onSaved: (data) {
                          subtitle = data;
                        },
                        text: 'Content',
                        lines: 5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ColorListview(),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocBuilder<AddNotecubit, AddNoteState>(
                        builder: (context, state) {
                          return Csutom_Material_Buttom(
                            isloading: state is AddNoteLoading ? true : false,
                            onpress: () {
                              if (formkey.currentState!.validate()) {
                                formkey.currentState!.save();

                                var currentDate = formatDate(
                                    DateTime.now(), [yyyy, '-', mm, '-', dd]);

                                var note = Note_Model(
                                  title: title!,
                                  subtitle: subtitle!,
                                  date: currentDate.toString(),
                                  color: Colors.blue.value,
                                );

                                BlocProvider.of<AddNotecubit>(context)
                                    .addnote(note);
                              } else {
                                autovalidateMode = AutovalidateMode.always;
                                setState(() {});
                              }
                            },
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
