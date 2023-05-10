import 'package:flutter/material.dart';

import '../../utils/constants/text_styles.dart';

class NavigationBarItem extends StatelessWidget {
  final String text;
  final Function handler;

  const NavigationBarItem({
    super.key,
    required this.text,
    required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => handler(),
      child: Text(
        text,
        style: AppTextStyles.headerMenuItem,
      ),
    );
  }
}
