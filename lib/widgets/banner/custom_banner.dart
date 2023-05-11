import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/constants/text_styles.dart';

import '../separator_line.dart';
import 'market_button.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 817,
      child: Stack(
        children: [
          SvgPicture.asset(
            'assets/graphics/banner_bg.svg',
            semanticsLabel: 'banner_bg',
            height: 770,
          ),
          const Positioned(
            top: 106,
            left: 106,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Strong for life \nwith us',
                  style: AppTextStyles.headline1,
                ),
                SizedBox(height: 21),
                SeparatorLine(),
                SizedBox(height: 37),
                Text(
                  '''The best Pre/postnatal fitness app! 100 
exercises divided in before, during and
after pregnancy. Stay strong and healthy
through all stages of pregnancy.''',
                  style: AppTextStyles.largeText,
                ),
                SizedBox(height: 37),
                Row(
                  children: [
                    MarketButton(
                      market: 'assets/graphics/markets/app_store/app_store.svg',
                      icon: 'assets/graphics/markets/app_store/logo.svg',
                      text:
                          'assets/graphics/markets/app_store/download_on_the.svg',
                      link:
                          'https://apps.apple.com/ua/app/strongmom/id1042565589',
                    ),
                    SizedBox(width: 40),
                    MarketButton(
                      market:
                          'assets/graphics/markets/play_market/google_play.svg',
                      icon: 'assets/graphics/markets/play_market/logo.svg',
                      text: 'assets/graphics/markets/play_market/get_on_it.svg',
                      link:
                          'https://play.google.com/store/apps/details?id=com.strongmomapp&hl=ru&gl=US',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 46.36,
            child: Image.asset(
              'assets/images/iphones/iphone1.png',
              height: 710.01,
              width: 534.28,
            ),
          ),
        ],
      ),
    );
  }
}
