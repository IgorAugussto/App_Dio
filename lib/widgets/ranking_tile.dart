import 'package:flutter/material.dart';

class RankingTile extends StatelessWidget {
  final int pos;
  final String nome;
  final int xp;
  const RankingTile(
      {super.key, required this.pos, required this.nome, required this.xp});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.grey[700],
        child: Text('$pos',
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      title: Text(nome, style: const TextStyle(color: Colors.white)),
      subtitle: LinearProgressIndicator(
        value: xp / 960,
        color: Colors.greenAccent,
        backgroundColor: Colors.white24,
      ),
      dense: true,
    );
  }
}
