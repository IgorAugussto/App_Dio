import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class FormationsPage extends StatefulWidget {
  const FormationsPage({super.key});

  @override
  State<FormationsPage> createState() => _FormationsPageState();
}

class _FormationsPageState extends State<FormationsPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  final List<String> _formacoes = [
    'Formação Python',
    'Formação Java',
    'Formação React Web',
    'Formação Node.js',
    'Formação Flutter',
    'Formação .NET',
    'Formação DevOps',
    'Formação ML',
    'Formação Blockchain',
    'Formação Front-End',
    'Formação QA Engineer',
    'Formação Cybersecurity',
    'Formação UX',
    'Formação Angular',
    'Formação JavaScript',
    'Formação React Native',
    'Formação PHP',
    'Formação Kotlin',
    'Formação Game Developer com Unity',
    'Formação Android Developer',
    'Formação Git e GitHub',
    // Adicione mais conforme desejar
  ];

  @override
  Widget build(BuildContext context) {
    final filteredFormacoes = _formacoes
        .where((form) => form.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return BasePage(
      title: 'Formações',
      actions: [
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: Colors.grey[900],
                title: const Text(
                  'Pesquisar Formação',
                  style: TextStyle(color: Colors.white),
                ),
                content: TextField(
                  controller: _searchController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Digite o nome da formação',
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: filteredFormacoes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 colunas como no print
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.3, // mais largo que alto
          ),
          itemBuilder: (context, index) {
            final formacao = filteredFormacoes[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Text(
                  formacao,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
