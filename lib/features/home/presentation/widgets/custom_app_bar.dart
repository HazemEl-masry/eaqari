import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your Location📍",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Cairo,Egypt",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                      ),
                    ),
                    Icon(FontAwesomeIcons.caretRight,color: Color(0xff517DFA),),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size(40.0.w, 40.0.h),
                backgroundColor: const Color(0xff293A54),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0.r))
              ),
              child: const Icon(FontAwesomeIcons.bell,color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 15.0.h),
        Text(
          "👋🏻 Hello, Hazem .",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0.sp
          ),
        ),
        SizedBox(height: 15.0.h),
        const Text(
          "Discover 🕵🏻 ...",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        AnimatedTextKit(
          repeatForever: true,
          pause: const Duration(milliseconds: 3000),
          animatedTexts: [
            TypewriterAnimatedText(
              "Your Dream House .",
              textStyle: TextStyle(
                color: const Color.fromARGB(255, 85, 230, 153),
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100)
            ),
            TypewriterAnimatedText(
              "Shops and Start your Business .",
              textStyle: TextStyle(
                color: const Color.fromARGB(255, 153, 162, 255),
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100)
            ),
            TypewriterAnimatedText(
              "The Luxury Life .",
              textStyle: TextStyle(
                color: Colors.yellow,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
              speed: const Duration(milliseconds: 100)
            ),
          ],
        ),
        SizedBox(height: 10.0.h),
      ],
    );
  }
}
