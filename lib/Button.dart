import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Button extends StatelessWidget {
  final onTap;
  Color? bgColor;
  Color textColor = Colors.white;
  String? label;

  Button.red({this.label, this.onTap}) {
    bgColor = Colors.red;
    textColor = Colors.black;
  }

  Button.orange({this.label, this.onTap}) {
    bgColor = Colors.deepOrange;
    textColor = Colors.black;
  }

  Button.blue({this.label, this.onTap}) {
    bgColor = Colors.blue;
    textColor = Colors.black;
  }

  Button.grey({this.label, this.onTap}) {
    bgColor = Colors.grey;
    textColor = Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Container(
              color: bgColor,
              child: Center(
                child: Text(
                  label!,
                  style: TextStyle(color: textColor, fontSize: 20),
                ),
              ),
            ),
          )),
    );
  }
}
