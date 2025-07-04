import 'package:flutter/material.dart';
import '../widgets/base_page.dart';

class GlobalCareerPage extends StatelessWidget {
  const GlobalCareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Carreira Global',
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner inicial
            Container(
              color: Colors.black,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Domine o inglês do mercado tech e conquiste sua vaga internacional',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Evolua sua carreira internacional com formações voltadas para o mercado global.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // English4Tech section
            Container(
              color: Colors.grey[900],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'dio.english4tech',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Cursos de inglês voltados ao mercado internacional e entrevistas técnicas.',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),

            // Comunidade internacional + Acesso
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'International Community',
                            style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Conecte-se com devs ao redor do mundo e receba oportunidades internacionais.',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Comece agora',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),

            // Oportunidades
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Aplique para vagas internacionais agora mesmo',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 16,
                    runSpacing: 16,
                    children: List.generate(6, (index) {
                      return Container(
                        width: MediaQuery.of(context).size.width / 2 - 24,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Vaga Internacional\n- País: EUA\n- Cargo: Fullstack Dev',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),

            // Hacking City Cards
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    'Hacking Cities',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(3, (index) {
                        return Container(
                          width: 160,
                          margin: const EdgeInsets.only(right: 16),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text(
                              'HACKING CITY\nLisbon | Dublin | Berlim',
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),

            // Rodapé de destaque
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'International Acceleration',
                            style: TextStyle(
                                color: Colors.amber, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Programas para acelerar sua contratação internacional.',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Hired International',
                            style: TextStyle(
                                color: Colors.amber, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Saiba como se preparar para vagas remotas com salário em dólar ou euro.',
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
