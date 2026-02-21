import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eaqari/core/theme/app_colors.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(AppColors.primary),
        minimumSize: WidgetStatePropertyAll(Size(0.75.sw, 40.0.h)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: AppSpacing.radiusMd),
        ),
      ),
      child: Text(text, style: AppTextStyles.bodyWhite),
    );
  }
}
