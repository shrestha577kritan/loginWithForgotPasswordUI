import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/theme.dart';
import 'package:loginapp/view/login_page.dart';
import 'package:loginapp/widgets/check_box.dart';
import 'package:loginapp/widgets/login_optinal.dart';
import 'package:loginapp/widgets/primary_button.dart';
import 'package:loginapp/widgets/signup_form.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Text(
                  'Create Account',
                  style: titleText,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Row(
                  children: [
                    Text(
                      'Already a member ?',
                      style: subTitle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => LoginPage(),
                            transition: Transition.leftToRight);
                      },
                      child: Text('Log In', style: textButton),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: kDefaultPadding,
                child: SignUpForm(),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: kDefaultPadding,
                child: CheckBox('Agree to terms and conditions.'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: kDefaultPadding,
                child: CheckBox('I have at least 18 year old.'),
              ),
              SizedBox(
                height: 10,
              ),
              PrimaryButton(
                buttonText: 'Log In',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Or log in with:',
                style: subTitle.copyWith(color: kZambeziColor),
              ),
              SizedBox(
                height: 10,
              ),
              LoginOptinal(),
            ],
          ),
        ),
      ),
    );
  }
}
