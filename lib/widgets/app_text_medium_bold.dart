import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MediumText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  MediumText({
    super.key,
    this.size=20,
    required this.text,
    this.color=Colors.black87});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
