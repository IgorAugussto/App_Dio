import 'package:flutter/material.dart';
import '../widgets/base_page.dart';
import 'package:app_dio/pages/job_detail_page.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jobs = [
      {'empresa': 'RAD', 'titulo': 'Backend Java', 'local': 'Remoto'},
      {'empresa': 'AWS', 'titulo': 'Data Engineer', 'local': 'Remoto'},
      {'empresa': 'iFood', 'titulo': 'Flutter Developer', 'local': 'Remoto'},
    ];

    return BasePage(
      title: 'Vagas',
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            color: Colors.grey[850],
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.purple,child: Text(job['empresa']![0])),
              title: Text(job['titulo']!, style: const TextStyle(color: Colors.white)),
              subtitle: Text('${job['empresa']} • ${job['local']}', style: const TextStyle(color: Colors.white54)),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const JobDetailPage()),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
