import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/header/dropdown_lang_button.dart';

import 'dropdown_download_button.dart';
import 'header_navigation_bar.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'LOGO',
          style: AppTextStyles.headerTitle,
        ),
        SizedBox(width: 200),
        HeaderNavigationBar(),
        DropdownDownloadButton(),
        DropdownLanguageButton(),
      ],
    );
  }
}
