import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/separator_line.dart';

class Headline extends StatelessWidget {
  const Headline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Before, during and after pregnancy',
          style: AppTextStyles.headline2,
        ),
        SizedBox(height: 24),
        Text(
          '''The app is divided into three different stages to help you choose
appropriate exercises. Each exercise is carefully selected to ensure safe and
appropriate adjustments to follow the pregnancy’s progress.''',
          textAlign: TextAlign.center,
          style: AppTextStyles.subtitle,
        ),
        SizedBox(height: 21),
        SeparatorLine(),
      ],
    );
  }
}
