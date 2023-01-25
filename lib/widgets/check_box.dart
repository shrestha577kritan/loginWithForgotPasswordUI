import 'package:flutter/material.dart';
import 'package:loginapp/theme.dart';

class CheckBox extends StatefulWidget {
  final String text;
  CheckBox(this.text);

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: kDarkGreyColor),
                ),
                child: _isSelected
                    ? Icon(
                        Icons.check,
                        size: 17,
                        color: Colors.green,
                      )
                    : null,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(widget.text),
          ],
        )
      ],
    );
  }
}
