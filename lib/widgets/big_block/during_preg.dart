import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/text_styles.dart';
import '../separator_line.dart';

class DuringPreg extends StatelessWidget {
  const DuringPreg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 719.66,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset('assets/graphics/healthy.svg'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 683,
              width: 546,
              child: Stack(
                children: [
                  SvgPicture.asset('assets/graphics/iphones_mask.svg'),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SvgPicture.asset('assets/graphics/purple_bg.svg'),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      child: Image.asset(
                        height: 621,
                        fit: BoxFit.fitHeight,
                        'assets/images/iphones/iphone3.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            right: 106,
            bottom: 181,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'During pregnancy',
                  style: AppTextStyles.headline3,
                ),
                SizedBox(height: 13),
                SeparatorLine(),
                SizedBox(height: 24),
                Text(
                  '''Working out during pregnancy has many benefits for 
both the mom and the baby. It can reduce back pain, 
help prevent gestational diabetes, promote good 
posture, strength and endurance, and also improve the 
ability to cope with labor.''',
                  style: AppTextStyles.regularText,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
