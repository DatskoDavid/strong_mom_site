import 'package:flutter/material.dart';
import 'package:test_task/utils/constants/colors.dart';

abstract class AppTextStyles {
  static const headerTitle = TextStyle(
    fontSize: 40,
    color: AppColors.purple1,
    fontWeight: FontWeight.w700,
  );

  static const headerMenuItem = TextStyle(
    fontSize: 18,
    color: AppColors.purple1,
    fontWeight: FontWeight.w400,
  );

  static const buttonCaption = TextStyle(
    fontSize: 18,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );

  static const dropdownMenuItem = TextStyle(
    fontSize: 14,
    color: AppColors.darkText,
    fontWeight: FontWeight.w400,
  );
}
