import 'package:flutter/material.dart';

import '../../models/article.dart';
import '../../utils/constants/text_styles.dart';

class SmallArticleCard extends StatelessWidget {
  final Article article;

  const SmallArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 286,
      width: 286,
      child: Stack(
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
            left: 16,
            bottom: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 247,
                  child: Text(
                    article.title,
                    style: AppTextStyles.headline5,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  article.date.toUpperCase(),
                  style: AppTextStyles.textBlogDates,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
