import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/theme.dart';
import 'package:loginapp/view/forgetPassword_page.dart';
import 'package:loginapp/view/signup_page.dart';
import 'package:loginapp/widgets/login_optinal.dart';
import 'package:loginapp/widgets/primary_button.dart';
import 'package:loginapp/widgets/loginForm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              'Welcome Back',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'New to this app?',
                  style: subTitle,
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => SignUpPage(),
                          transition: Transition.rightToLeft);
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1),
                    ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            LoginForm(),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.to(() => ForgetPassword());
              },
              child: Text(
                'Forgot password ?',
                style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 15,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(
              buttonText: 'Log In',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Or log in with:',
              style: subTitle.copyWith(color: kZambeziColor),
            ),
            SizedBox(
              height: 20,
            ),
            LoginOptinal(),
          ],
        ),
      ),
    );
  }
}
