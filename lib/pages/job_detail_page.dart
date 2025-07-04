import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Dados fictícios
    final vaga = {
      'titulo': 'Desenvolvedor Backend Java Sênior',
      'empresa': 'Bradesco',
      'local': 'Remoto • São Paulo/SP',
      'tipo': 'Híbrido',
      'nível': 'Sênior',
      'logo': '🟣', // Pode substituir por imagem futuramente
      'resumo':
      '“Respeite a indicação da oportunidade. Candidatos que não atendam aos pré-requisitos não serão considerados.”',
      'modelo': 'Híbrido - 2x Presencial',
      'unidade': 'Alphaville/SP • Cotia e Região',
      'responsabilidades': [
        'Desenvolver novas soluções em Java backend',
        'Atuar com arquitetura de microsserviços e APIs',
        'Interagir com time ágil de desenvolvimento',
        'Garantir a escalabilidade e performance das aplicações'
      ],
      'requisitos': [
        '5+ anos de experiência com desenvolvimento Java',
        'Conhecimento em plataformas de nuvem (Azure, AWS, GCP)',
        'Experiência com arquitetura de microsserviços'
      ],
      'beneficios': [
        'Plano de saúde e odontológico',
        'Vale alimentação e refeição',
        'Auxílio home office',
        'Participação nos lucros',
        'Descontos em produtos e serviços',
      ]
    };

    return BasePage(
      title: 'Detalhes da Vaga',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título e Localização
            Text(
              vaga['titulo']?.toString() ?? '',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 4),
            Text(
              vaga['local']?.toString() ?? '',
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.purple[700],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text('Vaga Sênior', style: TextStyle(color: Colors.white)),
            ),

            const SizedBox(height: 24),

            // Resumo
            Text(
              vaga['resumo']?.toString() ?? '',
              style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.purpleAccent),
            ),

            const SizedBox(height: 24),

            buildSection('Modelo de trabalho', vaga['modelo']?.toString() ?? ''),
            buildSection('Unidade', vaga['unidade']?.toString() ?? ''),
            buildListSection('Responsabilidades', (vaga['responsabilidades'] as List?)?.cast<String>()),
            buildListSection('Requisitos e Qualificações', (vaga['requisitos']as List?)?.cast<String>()),
            buildListSection('O que nos diferencia', (vaga['beneficios']as List?)?.cast<String>()),

            const SizedBox(height: 24),

            // Empresa (Lateral no print, abaixo no mobile)
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const CircleAvatar(backgroundColor: Colors.purple,child: Text('B')),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vaga['empresa']?.toString() ?? '',
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Text('Sobre a empresa', style: TextStyle(color: Colors.white70)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSection(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 4),
          Text(value ?? '', style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }

  Widget buildListSection(String title, List<dynamic>? items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 8),
          ...?items?.map((e) => Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('• ', style: TextStyle(color: Colors.white)),
                Expanded(child: Text(e, style: const TextStyle(color: Colors.white70))),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
