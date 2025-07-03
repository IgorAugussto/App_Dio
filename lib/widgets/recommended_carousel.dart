import 'package:flutter/material.dart';

class RecommendedCarousel extends StatelessWidget {
  final List<Map<String, String>> data;
  const RecommendedCarousel({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final item = data[index];
          return Container(
            width: 140,
            decoration: BoxDecoration(
              color: const Color(0xFF1F1F1F),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.purpleAccent),
            ),
            child: Center(
              child: Text(
                item['nome']!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
