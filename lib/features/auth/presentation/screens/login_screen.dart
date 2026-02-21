import 'package:eaqari/features/auth/presentation/widgets/login_app_bar.dart';
import 'package:eaqari/features/auth/presentation/widgets/login_body.dart';
import 'package:eaqari/features/auth/presentation/widgets/social_media_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginAppBar(),
              const SocialMediaIcons(),
              SizedBox(height: 20.0.h),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 40.0.w,
                      endIndent: 10.0.w,
                    ),
                  ),
                  const Text("or"),
                  Expanded(
                    child: Divider(
                      indent: 10.0.w,
                      endIndent: 40.0.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0.h),
              const LoginBody()
            ],
          ),
        ),
      ),
    );
  }
}