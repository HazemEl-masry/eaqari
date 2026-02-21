import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSpacing {
  AppSpacing._();

  static double get sm => 8.0.r;
  static double get md => 15.0.r;
  static double get lg => 20.0.r;
  static double get xl => 30.0.r;

  // Specific common edges
  static EdgeInsets get searchWidgetPadding => const EdgeInsets.all(20.0);
  static EdgeInsets get screenPaddingHorizontal =>
      EdgeInsets.symmetric(horizontal: 15.0.w);
  static EdgeInsets get loginAppBarPadding =>
      EdgeInsets.only(top: 40.0.h, bottom: 20.0.h);
  static EdgeInsets get registerAppBarPadding =>
      EdgeInsets.only(top: 30.0.h, bottom: 15.0.h);
  static EdgeInsets get filterButtonPadding =>
      EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h);

  // Common Box Radiuses
  static BorderRadius get radiusSm => BorderRadius.circular(13.0.r);
  static BorderRadius get radiusMd => BorderRadius.circular(14.0.r);
  static BorderRadius get radiusLg => BorderRadius.circular(18.0.r);
  static BorderRadius get radiusXl =>
      BorderRadius.circular(22.0); // 22 it is used without r in custom_search
}
