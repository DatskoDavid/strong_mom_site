import 'package:flutter/material.dart';
import 'package:test_task/widgets/blog/blog.dart';
import 'package:test_task/widgets/footer/footer.dart';
import 'package:test_task/widgets/go_to_form/go_to_form.dart';
import '../widgets/banner/custom_banner.dart';
import '../widgets/big_block/big_block.dart';
import '../widgets/header/header.dart';
import '../widgets/small_block/small_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            Center(
              child: SizedBox(
                width: 1240,
                child: Column(
                  children: [
                    Header(),
                    SizedBox(height: 60),
                    CustomBanner(),
                    SizedBox(height: 160),
                    SmallBlock(),
                    SizedBox(height: 160),
                    BigBlock(),
                    SizedBox(height: 160),
                    Blog(),
                    SizedBox(height: 81),
                    GoToForm(),
                    SizedBox(height: 160),
                  ],
                ),
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
