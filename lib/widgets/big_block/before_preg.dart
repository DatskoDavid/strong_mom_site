import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/widgets/separator_line.dart';

import '../../utils/constants/text_styles.dart';

class BeforePreg extends StatelessWidget {
  const BeforePreg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // створити Row(Column + SizedBox + Stack)
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Before pregnancy',
              style: AppTextStyles.headline3,
            ),
            SizedBox(height: 13),
            SeparatorLine(),
            SizedBox(height: 24),
            Text(
              'Start preparing for pregnancy with safe exercises that build\nup a strong body.',
              style: AppTextStyles.regularText,
            ),
            SizedBox(height: 16),
            Text(
              'Trimesters',
              style: AppTextStyles.subtitle,
            ),
            SizedBox(height: 5),
            Text(
              '''The pregnancy is divided into first trimester, second trimester 
part 1 and 2, and third trimester part 1 and 2 to provide 
exercises that are safe for each stage of the pregnancy. Each 
exercise comes with a video and a description so you can 
safely perform each exercise. Simple put in your due date and 
you will be taken to the proper stage.''',
              style: AppTextStyles.regularText,
            )
          ],
        ),
        SizedBox(
          height: 683,
          width: 546,
          child: Stack(
            children: [
              SvgPicture.asset('assets/graphics/iphones_mask.svg'),
              Align(
                alignment: Alignment.bottomCenter,
                child: SvgPicture.asset('assets/graphics/pink_bg.svg'),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/images/iphones/iphone2.png',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
