import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/colors.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/blog/article_card.dart';
import 'package:test_task/widgets/separator_line.dart';

import '../../data/fake_data.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Our blog posts',
          style: AppTextStyles.headline2,
        ),
        const SizedBox(height: 21),
        const SeparatorLine(),
        const SizedBox(height: 60),
        Row(
          children: [
            SizedBox(
              height: 604,
              width: 604,
              child: ArticleCard(
                article: articles[0],
              ),
            ),
            const SizedBox(width: 31),
            SizedBox(
              height: 604,
              width: 604,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 32,
                    mainAxisSpacing: 32),
                itemCount: articles.length - 1,
                itemBuilder: (context, index) => ArticleCard(
                  article: articles[index + 1],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Like what you see? View more',
                style: AppTextStyles.largeText,
              ),
              const SizedBox(width: 9),
              Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                  color: AppColors.purple1,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: AppColors.white,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
