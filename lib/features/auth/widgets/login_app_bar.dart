import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40.0.h,
        bottom: 20.0.h
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png",width: 120.w,),
            ],
          ),
          SizedBox(height: 20.0.h),
          Text(
            "Login",
            style: TextStyle(
              fontSize: 22.0.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0.h),
          const Text(
            "Continue with:",
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}
