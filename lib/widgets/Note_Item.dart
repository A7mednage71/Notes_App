import 'package:flutter/material.dart';

class note_item extends StatelessWidget {
  const note_item({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCD7A),
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
            title: const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'Flutter tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
              ),
            ),
            subtitle: Text(
              'Build Your career with Ben Nageh',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 18),
            ),
            trailing: IconButton(
              padding: EdgeInsets.only(right: 22),
              icon: const Icon(
                Icons.delete,
                color: Colors.black,
                size: 35,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 22, bottom: 24),
            child: Text(
              'oct 23 2023',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
