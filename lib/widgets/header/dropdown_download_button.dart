import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/colors.dart';
import 'package:test_task/utils/constants/text_styles.dart';

class DropdownDownloadButton extends StatefulWidget {
  const DropdownDownloadButton({Key? key}) : super(key: key);

  @override
  State<DropdownDownloadButton> createState() => _DropdownDownloadButtonState();
}

class _DropdownDownloadButtonState extends State<DropdownDownloadButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: Container(
          height: 44,
          width: 174,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: AppColors.purple1,
          ),
          child: const Center(
            child: Text(
              'Download',
              style: AppTextStyles.buttonCaption,
            ),
          ),
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
          MenuItems.onChanged(context, value as MenuItem);
        },
        dropdownStyleData: DropdownStyleData(
          width: 174,
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

  const MenuItem({
    required this.text,
  });
}

class MenuItems {
  static const List<MenuItem> items = [appStore, googlePlay];

  static const appStore = MenuItem(text: 'App Store');
  static const googlePlay = MenuItem(text: 'Google Play');

  static Widget buildItem(MenuItem item) {
    return Text(
      item.text,
      style: AppTextStyles.dropdownMenuItem,
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.appStore:
        //Do something
        break;
      case MenuItems.googlePlay:
        //Do something
        break;
    }
  }
}
