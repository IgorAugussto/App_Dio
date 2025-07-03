import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final secoes = {
      'Lançamentos Gratuitos': ['Curso A', 'Curso B', 'Curso C'],
      'Novos Cursos: Agentes de IA': ['Curso D', 'Curso E', 'Curso F'],
      'Ao vivo': ['Live 1', 'Live 2', 'Live 3'],
      'Minha Lista': ['Curso G', 'Curso H'],
      'Formações Avançadas': ['Formação 1', 'Formação 2'],
      'Formações Para Iniciantes': ['Formação 3', 'Formação 4'],
      'Carreira Global - Próximas Masterclasses': ['Masterclass 1'],
    };

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Cursos'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: secoes.entries.map((secao) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                secao.key,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: secao.value.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 12),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.purple.shade900,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          secao.value[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
            ],
          );
        }).toList(),
      ),
    );
  }
}
