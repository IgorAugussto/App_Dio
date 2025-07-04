import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class AllCoursesPage extends StatefulWidget {
  const AllCoursesPage({super.key});

  @override
  State<AllCoursesPage> createState() => _AllCoursesPageState();
}

class _AllCoursesPageState extends State<AllCoursesPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final Map<String, List<String>> _sections = {
    'Lançamentos Gratuitos': [
      'Formação Python Developer',
      'Formação Java Developer',
      'Formação IA com ChatGPT',
    ],
    'Minha Lista': [
      'Formação React Web Developer',
      'Formação Flutter Developer',
      'Formação Node.js',
    ],
    'Formações Avançadas': [
      'Formação DevOps',
      'Formação Segurança da Informação',
      'Formação Backend com Spring',
    ],
    'Formações para Iniciantes': [
      'Formação Lógica de Programação',
      'Formação Front-End',
      'Formação GitHub Explorer',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Todos os Cursos',
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.grey[900],
                title: const Text(
                  'Pesquisar Curso',
                  style: TextStyle(color: Colors.white),
                ),
                content: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Digite o nome do curso',
                    hintStyle: TextStyle(color: Colors.white54),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purpleAccent),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      _searchQuery = value;
                    });
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        _searchQuery = _searchController.text;
                      });
                    },
                    child: const Text(
                      'Buscar',
                      style: TextStyle(color: Colors.purpleAccent),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        children: _sections.entries.map((entry) {
          final sectionTitle = entry.key;
          final courses = entry.value
              .where((curso) => curso.toLowerCase().contains(_searchQuery.toLowerCase()))
              .toList();

          if (courses.isEmpty) return const SizedBox(); // esconde se nada bater com a busca

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  sectionTitle,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 140,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    final curso = courses[index];
                    return Container(
                      width: 200,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Text(
                          curso,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
        }).toList(),
      ),
    );
  }
}
