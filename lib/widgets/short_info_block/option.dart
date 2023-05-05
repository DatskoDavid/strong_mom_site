import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';

class Option extends StatelessWidget {
  final String title;
  final String description;
  final String icon;

  const Option({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: AppColors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 5,
                blurRadius: 3,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(icon),
          ),
        ),
        const SizedBox(width: 42),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyles.subtitle,
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: AppTextStyles.regularText,
            )
          ],
        ),
      ],
    );
  }
}
