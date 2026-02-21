import 'package:eaqari/core/widgets/app_text_button.dart';
import 'package:eaqari/core/widgets/app_text_form_field.dart';
import 'package:eaqari/features/auth/widgets/country_and_gov_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  bool isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Name",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 10.0.h),
        const AppTextFormField(
          prefixIcon: Icons.person,
          hintText: "username",
        ),
        SizedBox(height: 15.0.h),
        const Text(
          "Email",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 10.0.h),
        const AppTextFormField(
          prefixIcon: Icons.email,
          hintText: "example@mail.com",
        ),
        SizedBox(height: 15.0.h),
        const Text(
          "Password",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 10.0.h),
        AppTextFormField(
          prefixIcon: Icons.lock,
          hintText: "********",
          suffixIconPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
          },
          suffixIcon: isObscured ? Icons.visibility : Icons.visibility_off,
          obscureText: isObscured,
        ),
        SizedBox(height: 15.0.h),
        const Text(
          "Confirm Password",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 10.0.h),
        AppTextFormField(
          prefixIcon: Icons.lock,
          hintText: "********",
          suffixIconPressed: () {
            setState(() {
              isObscured = !isObscured;
            });
          },
          suffixIcon: isObscured ? Icons.visibility : Icons.visibility_off,
          obscureText: isObscured,
        ),
        SizedBox(height: 15.0.h),
        const CountryAndGovDropDown(),
        SizedBox(height: 15.0.h),
        Align(
          child: AppTextButton(
            onPressed: () {},
            text: "Register",
          ),
        ),
      ],
    );
  }
}