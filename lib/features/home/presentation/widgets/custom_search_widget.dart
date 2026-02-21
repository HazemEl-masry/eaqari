import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eaqari/core/theme/app_colors.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class CustomSearchWidget extends StatelessWidget {
  const CustomSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: AppSpacing.searchWidgetPadding,
        decoration: BoxDecoration(
          borderRadius: AppSpacing.radiusLg,
          color: AppColors.searchBackground,
        ),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white,
              size: 17.0.w,
            ),
            SizedBox(width: 15.0.w),
            Text("Search for property...", style: AppTextStyles.bodyWhite),
            const Spacer(),
            Container(
              padding: AppSpacing.filterButtonPadding,
              decoration: BoxDecoration(
                borderRadius: AppSpacing.radiusXl,
                color: AppColors.secondary,
              ),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.sliders,
                    size: 12.0.w,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.0.w),
                  Text("Filter", style: AppTextStyles.bodyWhite),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
