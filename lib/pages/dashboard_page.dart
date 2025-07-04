import 'package:flutter/material.dart';
import '../widgets/base_page.dart';
import '../widgets/profile_card.dart';
import '../widgets/recommended_carousel.dart';
import '../widgets/feed_item.dart';
import '../widgets/ranking_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    // ─── Dados mockados ───
    final recommended = [
      {'nome': 'ChatGPT for Devs', 'badge': 'GPT'},
      {'nome': 'DevOps Fundamentals', 'badge': 'DEVOPS'},
      {'nome': 'AWS CLF‑02 Practitioner', 'badge': 'AWS'},
    ];

    final feed = [
      {
        'autor': 'Sidnei Silva',
        'titulo': 'Transformando conhecimento em impacto real!',
        'hora': '16/06/2025 01:29'
      },
      {
        'autor': 'Pedro Barros',
        'titulo': 'Como dominar Flutter em 90 dias',
        'hora': '15/06/2025 20:10'
      },
    ];

    final ranking = [
      {'nome': 'Sidnei Silva', 'xp': 960},
      {'nome': 'Valter Ribeiro', 'xp': 720},
      {'nome': 'Pedro Barros', 'xp': 640},
      {'nome': 'Afonso Simão', 'xp': 480},
      {'nome': 'Wendel Silva', 'xp': 480},
    ];

    // ─── Agora usamos BasePage em vez de Scaffold ───
    return BasePage(
      title: 'Home',
      body: CustomScrollView(
        slivers: [
          // PERFIL
          SliverToBoxAdapter(child: ProfileCard()),

          // FORMAÇÕES RECOMENDADAS
          SliverToBoxAdapter(
            child: RecommendedCarousel(data: recommended),
          ),

          // FEED
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Text('Feed',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => FeedItem(item: feed[index]),
              childCount: feed.length,
            ),
          ),

          // RANKING DA SEMANA
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Text('Ranking da Semana',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => RankingTile(
                pos: index + 1,
                nome: ranking[index]['nome'].toString(),
                xp: ranking[index]['xp']! as int,
              ),
              childCount: ranking.length,
            ),
          ),
        ],
      ),
    );
  }
}
