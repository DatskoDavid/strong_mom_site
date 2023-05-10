import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'package:test_task/utils/constants/colors.dart';
import 'package:test_task/utils/constants/text_styles.dart';

class DropdownLanguageButton extends StatefulWidget {
  const DropdownLanguageButton({Key? key}) : super(key: key);

  @override
  State<DropdownLanguageButton> createState() => _DropdownLanguageButtonState();
}

class _DropdownLanguageButtonState extends State<DropdownLanguageButton> {
  String choosedLang = 'Eng';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              choosedLang,
              style: AppTextStyles.headerMenuItem,
            ),
            const SizedBox(width: 7),
            const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.purple1,
            ),
          ],
        ),
        openWithLongPress: false,
        items: [
          ...MenuItems.items.map(
            (item) => DropdownMenuItem<MenuItem>(
              value: item,
              child: MenuItems.buildItem(item),
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            choosedLang = value!.text.substring(0, 3);
          });
        },
        dropdownStyleData: DropdownStyleData(
          width: 145,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: AppColors.background,
          ),
          elevation: 8,
          offset: const Offset(0, -11),
        ),
        menuItemStyleData: MenuItemStyleData(
          customHeights: [
            ...List<double>.filled(MenuItems.items.length, 48),
          ],
          padding: const EdgeInsets.only(left: 16, right: 16),
        ),
      ),
    );
  }
}

class MenuItem {
  final String text;
  final String icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> items = [sverige, english];

  static const sverige = MenuItem(
    text: 'Sverige',
    icon: 'assets/images/lang_icons/sverige.png',
  );
  static const english = MenuItem(
    text: 'English',
    icon: 'assets/images/lang_icons/english.png',
  );

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Image.asset(
          item.icon,
          width: 22,
          height: 22,
        ),
        const SizedBox(width: 7),
        Text(
          item.text,
          style: AppTextStyles.dropdownMenuItem,
        ),
      ],
    );
  }
}
