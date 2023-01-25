import 'package:flutter/material.dart';
import 'package:loginapp/theme.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email'),
      ],
    );
  }

  Padding buildInputForm(String label) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              color: kTextFieldColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
            ),
          ),
        ));
  }
}
