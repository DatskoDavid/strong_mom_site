import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/widgets/footer/navigation_item.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 75),
      decoration: const BoxDecoration(color: AppColors.footerBg),
      child: Center(
        child: SizedBox(
          width: 1240,
          height: 302,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'LOGO',
                style: AppTextStyles.footerTitle,
              ),
              const SizedBox(width: 92),
              SizedBox(
                height: 150,
                width: 286,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavigationItem(
                      text: 'About Us',
                      handler: () {},
                    ),
                    NavigationItem(
                      text: 'Blog',
                      handler: () {},
                    ),
                    NavigationItem(
                      text: 'Support',
                      handler: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 36),
              SizedBox(
                height: 150,
                width: 286,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NavigationItem(
                      text: 'Terms & Conditions',
                      handler: () {},
                    ),
                    NavigationItem(
                      text: 'Privacy Policy',
                      handler: () {},
                    ),
                    NavigationItem(
                      text: 'Cookies',
                      handler: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 36),
              SizedBox(
                width: 188,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => launchUrl(
                        Uri.parse('https://www.facebook.com/'),
                      ),
                      child: SvgPicture.asset(
                        'assets/graphics/social_media_logo/facebook.svg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launchUrl(
                        Uri.parse('https://www.instagram.com/'),
                      ),
                      child: SvgPicture.asset(
                        'assets/graphics/social_media_logo/instagram.svg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launchUrl(
                        Uri.parse('https://www.youtube.com/'),
                      ),
                      child: SvgPicture.asset(
                        'assets/graphics/social_media_logo/youtube.svg',
                      ),
                    ),
                    GestureDetector(
                      onTap: () => launchUrl(
                        Uri.parse('https://www.pinterest.com/'),
                      ),
                      child: SvgPicture.asset(
                        'assets/graphics/social_media_logo/pinterest.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
