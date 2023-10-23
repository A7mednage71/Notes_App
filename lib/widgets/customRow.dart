import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_searchappbar.dart';

class Custom_Row extends StatelessWidget {
  const Custom_Row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Custom_icon_appbar()
      ],
    );
  }
}
