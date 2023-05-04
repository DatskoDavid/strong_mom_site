import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/text_styles.dart';

class HeaderNavigationBar extends StatefulWidget {
  const HeaderNavigationBar({Key? key}) : super(key: key);

  @override
  State<HeaderNavigationBar> createState() => _HeaderNavigationBarState();
}

class _HeaderNavigationBarState extends State<HeaderNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Home', style: AppTextStyles.headerMenuItem),
          Text('About', style: AppTextStyles.headerMenuItem),
          Text('Pricing', style: AppTextStyles.headerMenuItem),
          Text('Facts', style: AppTextStyles.headerMenuItem),
          Text('Blog', style: AppTextStyles.headerMenuItem),
          Text('Support', style: AppTextStyles.headerMenuItem),
        ],
      ),
    );
  }
}
