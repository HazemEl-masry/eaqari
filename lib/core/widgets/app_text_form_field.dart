import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({super.key, required this.prefixIcon, this.suffixIconPressed,this.suffixIcon, required this.hintText, this.obscureText});
  final IconData prefixIcon;
  final void Function()? suffixIconPressed;
  final IconData? suffixIcon;
  final String hintText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13.0.r)
        ),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: IconButton(onPressed: suffixIconPressed, icon: Icon(suffixIcon)),
        hintText: hintText,
      ),
    );
  }
}