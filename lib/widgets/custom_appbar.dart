import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 15,
        top: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Notes',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(16),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.search_rounded,
                size: 24,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
