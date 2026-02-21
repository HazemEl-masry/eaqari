import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.registerAppBarPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(FontAwesomeIcons.angleLeft),
          ),
          Align(
            child: Lottie.asset(
              "assets/lottie/real estate.json",
              width: 200.0.w,
            ),
          ),
          Text("Register", style: AppTextStyles.h1),
          SizedBox(height: 10.0.h),
          Text(
            "Create New Account and explore your next step .",
            style: AppTextStyles.title,
          ),
        ],
      ),
    );
  }
}
