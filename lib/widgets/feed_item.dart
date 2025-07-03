import 'package:flutter/material.dart';

class FeedItem extends StatelessWidget {
  final Map<String, String> item;
  const FeedItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1B1B1B),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item['autor']!,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text(item['hora']!, style: const TextStyle(color: Colors.white54)),
            const SizedBox(height: 12),
            Text(item['titulo']!,
                style: const TextStyle(
                    color: Colors.white, fontSize: 16, height: 1.3)),
          ],
        ),
      ),
    );
  }
}
