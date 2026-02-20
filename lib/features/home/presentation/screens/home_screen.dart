import 'package:eaqari/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:eaqari/features/home/presentation/widgets/custom_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff122B4B),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15.0.r),
                  bottomLeft: Radius.circular(15.0.r),
                ),
              ),
              child: const Padding(
                padding: EdgeInsetsGeometry.only(
                  top: 40.0,
                  bottom: 20.0,
                  right: 12.0,
                  left: 12.0,
                ),
                child: Column(
                  children: [
                    CustomAppBar(),
                    CustomSearchWidget(),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
