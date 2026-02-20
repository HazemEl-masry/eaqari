import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0.r),
          color: const Color(0xff384B6B),
        ),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 17.0.w,
            ),
            SizedBox(width: 15.0.w),
            const Text(
              "Search for property...",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.0),
                color: const Color(0xff517DFA),
              ),
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.sliders, size: 12.0.w, color: Colors.white),
                  SizedBox(width: 10.0.w),
                  const Text(
                    "Filter",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
