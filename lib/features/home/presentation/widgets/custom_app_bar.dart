import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eaqari/core/theme/app_colors.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/logo.png", width: 50.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Location📍", style: AppTextStyles.bodyWhite),
                Row(
                  children: [
                    Text(
                      "Cairo,Egypt",
                      style: AppTextStyles.bodyWhite.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.white,
                      ),
                    ),
                    const Icon(
                      FontAwesomeIcons.caretRight,
                      color: AppColors.secondary,
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(40.0.w, 40.0.h),
                backgroundColor: AppColors.darkBackground,
                shape: RoundedRectangleBorder(
                  borderRadius: AppSpacing.radiusSm,
                ),
              ),
              child: const Icon(FontAwesomeIcons.bell, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 15.0.h),
        Text("👋🏻 Hello, Hazem .", style: AppTextStyles.titleBold),
        SizedBox(height: 15.0.h),
        Text("Discover 🕵🏻 ...", style: AppTextStyles.bodyWhite),
        AnimatedTextKit(
          repeatForever: true,
          pause: const Duration(milliseconds: 3000),
          animatedTexts: [
            TypewriterAnimatedText(
              "Your Dream House .",
              textStyle: AppTextStyles.h2.copyWith(
                color: AppColors.successGreen,
              ),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              "Shops and Start your Business .",
              textStyle: AppTextStyles.h2.copyWith(
                color: AppColors.lightIndigo,
              ),
              speed: const Duration(milliseconds: 100),
            ),
            TypewriterAnimatedText(
              "The Luxury Life .",
              textStyle: AppTextStyles.h2.copyWith(
                color: AppColors.warningYellow,
              ),
              speed: const Duration(milliseconds: 100),
            ),
          ],
        ),
        SizedBox(height: 10.0.h),
      ],
    );
  }
}
