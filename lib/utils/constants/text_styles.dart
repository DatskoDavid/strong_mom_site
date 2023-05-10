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

  static const headline1 = TextStyle(
    fontSize: 56,
    color: AppColors.darkText,
    fontWeight: FontWeight.w700,
  );

  static const headline2 = TextStyle(
    fontSize: 50,
    color: AppColors.darkText,
    fontWeight: FontWeight.w700,
  );

  static const whiteHeadline2 = TextStyle(
    fontSize: 50,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  static const headline3 = TextStyle(
    fontSize: 40,
    color: AppColors.darkText,
    fontWeight: FontWeight.w700,
  );

  static const headline4 = TextStyle(
    fontSize: 32,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  static const headline5 = TextStyle(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  static const subtitle = TextStyle(
    fontSize: 32,
    color: AppColors.lightText,
    fontWeight: FontWeight.w500,
  );

  static const largeText = TextStyle(
    fontSize: 24,
    color: AppColors.lightText,
    fontWeight: FontWeight.w400,
  );

  static const regularText = TextStyle(
    fontSize: 18,
    color: AppColors.lightText,
    fontWeight: FontWeight.w400,
  );

  static const textBlogLargeProperties = TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );

  static const textBlogDates = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );
}
