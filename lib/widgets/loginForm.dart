import 'package:flutter/material.dart';
import 'package:loginapp/theme.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('Email', false),
        buildInputForm('Password', true),
      ],
    );
  }

  Padding buildInputForm(String label, bool pass) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: OutlineInputBorder (
                borderSide: BorderSide(color: kPrimaryColor),
              ),
              suffixIcon: pass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: _isObscure
                          ? Icon(
                              Icons.visibility_off,
                              color: kPrimaryColor,
                            )
                          : Icon(
                              Icons.visibility,
                              color: kPrimaryColor,
                            ),
                    )
                  : null)),
    );
  }
}
