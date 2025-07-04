import 'package:app_dio/pages/profile_page.dart';
import 'package:flutter/material.dart';
import '../widgets/stat_box.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const ProfilePage())),
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF171717),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(radius: 26, backgroundColor: Colors.grey),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Igor Carlos',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text('Nível 12',
                        style: TextStyle(color: Colors.purpleAccent)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            LinearProgressIndicator(
              value: 10000 / 11565,
              color: Colors.greenAccent,
              backgroundColor: Colors.white24,
              minHeight: 6,
            ),
            const SizedBox(height: 8),
            const Text('XP 10000/11565',
                style: TextStyle(color: Colors.white70)),
            const Divider(height: 24, color: Colors.white24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                StatBox(label: 'Habilidades', value: '09'),
                StatBox(label: 'Projetos', value: '12'),
                StatBox(label: 'Artigos', value: '00'),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
