import 'package:flutter/material.dart';

import '../../models/article.dart';
import '../../utils/constants/text_styles.dart';

class BigArticleCard extends StatelessWidget {
  final Article article;

  const BigArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Image.asset(
            article.image,
          ),
        ),
        Positioned(
          left: 32,
          bottom: 32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 544,
                child: Text(
                  article.title,
                  style: AppTextStyles.headline4,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Image.asset(
                    article.author!.avatar,
                    height: 30,
                  ),
                  const SizedBox(width: 9),
                  Text(
                    'BY ${article.author!.name.toUpperCase()}',
                    style: AppTextStyles.textBlogLargeProperties,
                  ),
                  const SizedBox(width: 35),
                  Text(
                    article.date.toUpperCase(),
                    style: AppTextStyles.textBlogLargeProperties,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
