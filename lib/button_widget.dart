import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.txt, required this.backgroundColor, required this.txtColor, required this.onTap});
  
  final String txt;
  final Color backgroundColor;
  final Color txtColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: backgroundColor
        ),
        child: Center(
          child :Text(txt, style: TextStyle(
            fontSize: 24,
            color: txtColor
          ),)
        ),
      ),
    );
  }
}