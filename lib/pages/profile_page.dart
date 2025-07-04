import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Meu Perfil',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dados do usuário
            Row(
              children: [
                const CircleAvatar(radius: 30, backgroundColor: Colors.grey),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Igor Carlos',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                    Text('igor.dev@email.com', style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),

            const SizedBox(height: 24),
            _buildSectionTitle('Informações de Contato'),
            _buildTextField('LinkedIn', 'https://linkedin.com/in/igor'),
            _buildTextField('GitHub', 'https://github.com/igor'),
            _buildTextField('Cidade', 'São Paulo - SP'),

            const SizedBox(height: 24),
            _buildSectionTitle('Habilidades do Currículo'),
            Wrap(
              spacing: 8,
              children: const [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Firebase')),
                Chip(label: Text('Git')),
                Chip(label: Text('Scrum')),
              ],
            ),

            const SizedBox(height: 24),
            _buildSectionTitle('Formação Acadêmica'),
            _buildListItem('Análise e Desenvolvimento de Sistemas', 'Faculdade XPTO (2020 - 2023)'),

            const SizedBox(height: 24),
            _buildSectionTitle('Experiência Profissional'),
            _buildListItem('Estágio em Desenvolvimento', 'Tech Ltda (2023 - Presente)'),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  Widget _buildTextField(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        readOnly: true,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          hintText: value,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white24),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purpleAccent),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
