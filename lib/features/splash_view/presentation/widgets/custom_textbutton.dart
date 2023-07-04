import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
   CustomTextButton({Key? key, required this.onpressed, required this.text, required this.color}) : super(key: key);
final void Function() onpressed;
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child: Text(
          text, style: TextStyle(color: color,fontSize: 19),)
    );
  }
}
