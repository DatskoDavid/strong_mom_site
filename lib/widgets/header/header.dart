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
      children: [
        Text(
          'LOGO',
          style: AppTextStyles.headerTitle,
        ),
        Spacer(flex: 8),
        HeaderNavigationBar(),
        Spacer(),
        DropdownDownloadButton(),
        Spacer(),
        DropdownLanguageButton(),
      ],
    );
  }
}
