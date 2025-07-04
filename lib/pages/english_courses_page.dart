import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class EnglishCoursesPage extends StatelessWidget {
  const EnglishCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = {
      'Módulo 1': ['Como apresentar-se', 'Entrevistas comuns', 'Vocabulário Profissional'],
      'Módulo 2': ['Conhecendo empresas', 'Vocabulário técnico', 'Diferenças culturais'],
      'Módulo 3': ['Networking internacional', 'Escrevendo emails formais'],
      'Módulo 4': ['Simulação de entrevista', 'Erros comuns'],
    };

    return BasePage(
      title: 'Cursos de Inglês',
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Bem-vindo ao English4Tech',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),
          ...modules.entries.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  entry.key,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.purpleAccent),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: entry.value.map((title) {
                    return Container(
                      width: 160,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(height: 80, color: Colors.white10), // thumbnail placeholder
                          const SizedBox(height: 8),
                          Text(title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white70)),
                        ],
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 24),
              ],
            );
          }),
        ],
      ),
    );
  }
}
