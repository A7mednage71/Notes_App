import 'package:flutter/material.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                height: 50,
              ),
              Csutom_Material_Buttom(
                onpress: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
