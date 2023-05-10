import 'package:flutter/material.dart';
import 'package:test_task/models/article.dart';
import 'big_article_card.dart';
import 'small_article_card.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400) {
            return BigArticleCard(article: article);
          } else {
            return SmallArticleCard(article: article);
          }
        },
      ),
    );
  }
}
