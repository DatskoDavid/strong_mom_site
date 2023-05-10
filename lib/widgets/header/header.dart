import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/text_styles.dart';
import 'package:test_task/widgets/header/dropdown_lang_button.dart';

import 'custom_navigation_bar.dart';
import 'dropdown_download_button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          Text(
            'LOGO',
            style: AppTextStyles.headerTitle,
          ),
          Spacer(flex: 8),
          CustomNavigationBar(),
          Spacer(),
          DropdownDownloadButton(),
          Spacer(),
          Flexible(
            flex: 2,
            child: DropdownLanguageButton(),
          ),
        ],
      ),
    );
  }
}
