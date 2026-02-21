import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eaqari/core/theme/app_spacing.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(40.0.w, 20.0.h),
            shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusSm),
          ),
          child: SvgPicture.asset("assets/svg/facebook.svg"),
        ),
        SizedBox(width: 25.0.w),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(40.0.w, 20.0.h),
            shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusSm),
          ),
          child: SvgPicture.asset("assets/svg/google.svg"),
        ),
        SizedBox(width: 25.0.w),

        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(40.0.w, 20.0.h),
            shape: RoundedRectangleBorder(borderRadius: AppSpacing.radiusSm),
          ),
          child: SvgPicture.asset("assets/svg/apple.svg"),
        ),
      ],
    );
  }
}
