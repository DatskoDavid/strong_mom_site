import 'package:flutter/material.dart';
import 'widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          top: 10,
          right: 20,
          bottom: 0,
          left: 20,
        ),
        child: Header(),
      ),
    ));
  }
}
