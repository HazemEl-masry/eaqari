import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class RegisterAppBar extends StatelessWidget {
  const RegisterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 30.0.h,bottom: 15.0.h),
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
          Text(
            "Register",
            style: TextStyle(
              fontSize: 22.0.sp,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10.0.h),
          const Text(
            "Create New Account and explore your next step .",
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
