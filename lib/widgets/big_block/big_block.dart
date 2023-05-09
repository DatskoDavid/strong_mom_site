import 'package:flutter/material.dart';
import 'package:test_task/widgets/big_block/before_preg.dart';
import 'package:test_task/widgets/big_block/during_preg.dart';
import 'package:test_task/widgets/big_block/headline.dart';

class BigBlock extends StatelessWidget {
  const BigBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Headline(),
        SizedBox(height: 60),
        BeforePreg(),
        DuringPreg(),
      ],
    );
  }
}
