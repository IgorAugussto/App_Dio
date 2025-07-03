import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/dashboard_page.dart';
import '../pages/all_courses_page.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget body;
  final List<Widget>? actions;

  const BasePage({
    super.key,
    required this.title,
    required this.body,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ①  ───────────────────────── Drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.purpleAccent),
              child: Text('Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: const Text('Meus Cursos'),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (_) => const HomePage())),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const DashboardPage())),
            ),
            ListTile(
              title: const Text('Cursos'),
              onTap: () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (_) => const AllCoursesPage())),
            ),
          ],
        ),
      ),

      // ②  ───────────────────────── AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,   // ícone branco
        title: Text(title),

        // *** Garanta a presença manual do botão-hambúrguer ***
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),

      // ③  ───────────────────────── Conteúdo da página
      body: body,
      backgroundColor: Colors.black,
    );
  }
}
