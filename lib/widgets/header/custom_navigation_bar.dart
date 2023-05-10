import 'package:flutter/material.dart';

import 'navigation_bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 476,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavigationBarItem(text: 'Home', handler: (){}),
          NavigationBarItem(text: 'About', handler: (){}),
          NavigationBarItem(text: 'Pricing', handler: (){}),
          NavigationBarItem(text: 'Blog', handler: (){}),
          NavigationBarItem(text: 'Support', handler: (){}),
        ],
      ),
    );
  }
}
