import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final cursos = [
      {'titulo': 'Formação Flutter Specialist', 'progresso': 0.4},
      {'titulo': 'Formação Java Developer', 'progresso': 0.7},
      {'titulo': 'Formação React Web Developer', 'progresso': 0.2},
    ];

    return BasePage(
      title: 'Meus Cursos',
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cursos.length,
        itemBuilder: (context, index) {
          final curso = cursos[index];
          return Card(
            color: Colors.grey[900],
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    (curso['titulo'] ?? '').toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: curso['progresso'] as double,
                    color: Colors.purpleAccent,
                    backgroundColor: Colors.white24,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${((curso['progresso'] as double) * 100).toInt()}% concluído',
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
