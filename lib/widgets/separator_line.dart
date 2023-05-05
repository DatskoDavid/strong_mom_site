import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/colors.dart';

class SeparatorLine extends StatelessWidget {
  const SeparatorLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 3,
      decoration: const BoxDecoration(
        color: AppColors.red,
      ),
    );
  }
}
