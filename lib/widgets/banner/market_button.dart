import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class MarketButton extends StatelessWidget {
  final String market;
  final String icon;
  final String text;
  final String link;

  const MarketButton({
    super.key,
    required this.market,
    required this.icon,
    required this.text,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        launchUrl(Uri.parse(link));
      },
      child: Container(
        height: 50,
        width: 170,
        padding: const EdgeInsets.only(left: 12),
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: AppColors.marketBtnBorder,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(text),
                  SvgPicture.asset(market),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
