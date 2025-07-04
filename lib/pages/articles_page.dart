import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final articles = [
      {
        'autor': 'Gabriel Santos',
        'titulo': 'Por que Git é essencial para devs?',
        'data': '03/07/2025'
      },
      {
        'autor': 'Juliana Dias',
        'titulo': 'Flutter ou React Native em 2025?',
        'data': '01/07/2025'
      },
    ];

    return BasePage(
      title: 'Artigos',
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: articles.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final artigo = articles[index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(artigo['titulo']!,
                    style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(
                  'Por ${artigo['autor']} - ${artigo['data']}',
                  style: const TextStyle(color: Colors.white54),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
