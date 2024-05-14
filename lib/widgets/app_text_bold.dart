import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class TextBold extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  TextBold({
    super.key,
    this.size=30,
    required this.text,
    this.color=Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
