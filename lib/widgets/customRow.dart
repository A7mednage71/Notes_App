import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_searchappbar.dart';

class Custom_Row extends StatelessWidget {
  const Custom_Row({
    super.key,
    required this.text,
    required this.icon,
    this.onpress,
  });

  final String text;
  final Icon icon;
  final void Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        Custom_icon_appbar(
          icon: icon,
          onpress: onpress,
        )
      ],
    );
  }
}
