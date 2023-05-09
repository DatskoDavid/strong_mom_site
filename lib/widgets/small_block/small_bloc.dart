import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/small_block/option.dart';

class SmallBlock extends StatelessWidget {
  const SmallBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'How does it work?',
          style: AppTextStyles.headline2,
        ),
        SizedBox(height: 24),
        Text(
          'Easy, fun & essential training for moms',
          style: AppTextStyles.subtitle,
        ),
        SizedBox(height: 84),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Option(
              title: 'Browse exercises',
              description:
                  'Browse over 100 exercises with a video or picture and a \ndescription.',
              icon: 'assets/graphics/search_icon.svg',
            ),
            SizedBox(width: 41),
            Option(
              title: 'Create timeline',
              description:
                  'Take pictures along the way during and after the \npregnancy to see the transformation.',
              icon: 'assets/graphics/search_icon.svg',
            ),
          ],
        )
      ],
    );
  }
}
