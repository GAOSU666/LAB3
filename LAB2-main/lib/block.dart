import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final String title;
  final String imagePath;

  const Block({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.yellowAccent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 50,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(height: 8),
          const Text(
            "Tear into your opponent like a mad dog",
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }
}
