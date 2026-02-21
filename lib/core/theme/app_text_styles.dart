import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get h1 => TextStyle(
    fontSize: 22.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textDark,
  );

  static TextStyle get h2 => TextStyle(
    fontSize: 20.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static TextStyle get title =>
      TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w500);

  static TextStyle get titleBold => TextStyle(
    fontSize: 16.0.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textWhite,
  );

  static TextStyle get bodyMedium =>
      TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w500);

  static TextStyle get linkBlue => const TextStyle(color: AppColors.textBlue);

  static TextStyle get bodyWhite =>
      const TextStyle(color: AppColors.textWhite, fontWeight: FontWeight.w500);
}
