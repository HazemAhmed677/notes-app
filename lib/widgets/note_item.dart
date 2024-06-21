import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFCC82),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(top: 22, bottom: 14, left: 16),
              child: Text(
                'Flutter tips',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(
                bottom: 50,
              ),
              child: Icon(
                Icons.delete,
                color: Colors.black,
                size: 32,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 22),
              child: Text(
                'Build your Career with Tharwat Samy',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withOpacity(0.4),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 26,
              bottom: 20,
            ),
            child: Text(
              '21 Jun 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
