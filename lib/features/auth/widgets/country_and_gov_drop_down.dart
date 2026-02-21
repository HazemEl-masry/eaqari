import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountryAndGovDropDown extends StatelessWidget {
  const CountryAndGovDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Country",
          style: TextStyle(
            fontWeight: FontWeight.w600
          ),
        ),
        SizedBox(height: 10.0.h),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: "Country",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.0.r)
            ),
            prefixIcon: const Icon(FontAwesomeIcons.locationDot)
          ),
          items: const [
            DropdownMenuItem(child: Text('cairo'))
          ],
          onChanged: (value) {}
        ),
      ],
    );
  }
}
