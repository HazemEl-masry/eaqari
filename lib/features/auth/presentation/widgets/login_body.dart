import 'package:eaqari/core/widgets/app_text_button.dart';
import 'package:eaqari/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 7.0.h),
        const AppTextFormField(
          prefixIcon: Icons.email,
          hintText: "example@mail.com",
        ),
        SizedBox(height: 20.0.h),
        Text(
          "Password",
          style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 7.0.h),
        AppTextFormField(
          prefixIcon: Icons.lock,
          hintText: "*********",
          suffixIcon: isObscure ? Icons.visibility : Icons.visibility_off,
          suffixIconPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          obscureText: isObscure,
        ),
        Align(
          alignment: AlignmentGeometry.centerRight,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Forget Password",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        Align(
          alignment: AlignmentGeometry.center,
          child: AppTextButton(onPressed: () {}, text: "Login"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Don't Have an Account"),
            TextButton(
              onPressed: () {
                context.push("/RegisterScreen");
              },
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.blue
                ),
              )
            ),
          ],
        ),
      ],
    );
  }
}
