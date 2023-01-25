import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/theme.dart';
import 'package:loginapp/view/login_page.dart';
import 'package:loginapp/widgets/forgotpassword.dart';
import 'package:loginapp/widgets/primary_button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 250, left: 20),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: titleText,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Please enter your email address', style: subTitle),
              SizedBox(
                height: 15,
              ),
              ForgetPasswordForm(),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => LoginPage());
                },
                child: PrimaryButton(
                  buttonText: 'Reset Password',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
