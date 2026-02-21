import 'package:eaqari/features/auth/presentation/widgets/register_app_bar.dart';
import 'package:eaqari/features/auth/presentation/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppSpacing.screenPaddingHorizontal.copyWith(bottom: 20.0.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RegisterAppBar(),
              const RegisterBody(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do you have an account"),
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text("Login", style: AppTextStyles.linkBlue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
