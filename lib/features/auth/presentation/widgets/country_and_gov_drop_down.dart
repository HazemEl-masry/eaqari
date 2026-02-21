import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eaqari/core/theme/app_spacing.dart';
import 'package:eaqari/core/theme/app_text_styles.dart';

class CountryAndGovDropDown extends StatelessWidget {
  const CountryAndGovDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Country", style: AppTextStyles.title),
        SizedBox(height: 10.0.h),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: "Country",
            border: OutlineInputBorder(borderRadius: AppSpacing.radiusSm),
            prefixIcon: const Icon(FontAwesomeIcons.locationDot),
          ),
          items: const [DropdownMenuItem(child: Text('cairo'))],
          onChanged: (value) {},
        ),
        SizedBox(height: 15.0.h),
        Text("City", style: AppTextStyles.title),
        SizedBox(height: 10.0.h),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: "Country",
            border: OutlineInputBorder(borderRadius: AppSpacing.radiusSm),
            prefixIcon: const Icon(FontAwesomeIcons.city),
          ),
          items: const [DropdownMenuItem(child: Text('cairo'))],
          onChanged: (value) {},
        ),
      ],
    );
  }
}
