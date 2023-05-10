import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/colors.dart';
import 'package:test_task/utils/constants/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;

  const CustomTextField(
      {super.key, required this.hint, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58,
      width: 392,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTextStyles.textFieldHint,
          filled: true,
          fillColor: AppColors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.lightGrey),
            borderRadius: BorderRadius.circular(38),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.blue),
            borderRadius: BorderRadius.circular(38),
          ),
        ),
      ),
    );
  }
}
