import 'package:flutter/material.dart';
import 'widgets/banner/custom_banner.dart';
import 'widgets/header/header.dart';
import 'widgets/short_info_block/short_info_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 1240,
          child: ListView(
            padding: const EdgeInsets.only(top: 28.0),
            children: const [
              Header(),
              SizedBox(height: 83),
              ShortInfoBlock(),
              SizedBox(height: 160),
              CustomBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
