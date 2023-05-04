import 'package:flutter/material.dart';

class HeaderNavigationBar extends StatefulWidget {
  const HeaderNavigationBar({Key? key}) : super(key: key);

  @override
  State<HeaderNavigationBar> createState() => _HeaderNavigationBarState();
}

class _HeaderNavigationBarState extends State<HeaderNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text('HeaderNavigationBar'),
    );
  }
}
