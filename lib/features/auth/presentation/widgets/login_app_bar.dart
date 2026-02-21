import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.loginAppBarPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset("assets/images/logo.png", width: 120.w)],
          ),
          SizedBox(height: 20.0.h),
          Text("Login", style: AppTextStyles.h1),
          SizedBox(height: 10.0.h),
          Text("Continue with:", style: AppTextStyles.title),
        ],
      ),
    );
  }
}
