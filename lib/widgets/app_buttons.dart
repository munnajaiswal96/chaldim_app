import 'package:chaldim_app/widgets/app_text_medium_bold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButton({
    super.key,
    this.text='Hi',
    this.icon,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    this.isIcon=false,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor,
      ),
      child: isIcon==false?Center(child: MediumText(text:text!,color: color)):Icon(icon,color: color,),
    );
  }
}
