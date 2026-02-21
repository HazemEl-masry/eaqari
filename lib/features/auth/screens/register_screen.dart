import 'package:eaqari/features/auth/widgets/register_app_bar.dart';
import 'package:eaqari/features/auth/widgets/register_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          right: 15.0.w,
          left: 15.0.w,
          bottom: 20.0.h
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const RegisterAppBar(),
              const RegisterBody(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do you have an account"),
                  TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}