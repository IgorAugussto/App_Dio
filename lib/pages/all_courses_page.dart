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

  final List<Map<String, dynamic>> _allCourses = [
    {'titulo': 'Formação Python Developer'},
    {'titulo': 'Formação Java Developer'},
    {'titulo': 'Formação React Web Developer'},
    {'titulo': 'Formação Node.js'},
    {'titulo': 'Formação IA com ChatGPT'},
    {'titulo': 'Formação Flutter Developer'},
    // Adicione mais se quiser
  ];

  @override
  Widget build(BuildContext context) {
    final filteredCourses = _allCourses
        .where((curso) => curso['titulo']
        .toLowerCase()
        .contains(_searchQuery.toLowerCase()))
        .toList();

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
                    child: const Text('Buscar', style: TextStyle(color: Colors.purpleAccent)),
                  ),
                ],
              ),
            );
          },
        ),
      ],
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: filteredCourses.length,
        itemBuilder: (context, index) {
          final curso = filteredCourses[index];
          return Card(
            color: Colors.grey[850],
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                curso['titulo'],
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
