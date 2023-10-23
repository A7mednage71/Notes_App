import 'package:flutter/material.dart';

class Custom_icon_appbar extends StatelessWidget {
  const Custom_icon_appbar({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        iconSize: 28,
      ),
    );
  }
}
