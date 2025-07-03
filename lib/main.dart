import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const DioApp());
}

class DioApp extends StatelessWidget {
  const DioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App DIO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // estilo escuro padrão
      home: const LoginPage(),
    );
  }
}
