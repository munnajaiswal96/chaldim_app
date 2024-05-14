import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({
    super.key,
    this.width=120,
    this.isResponsive=false,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey,
        ),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(
              margin:EdgeInsets.only(left: 20),
              child: Text('Book Trip Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ):Container(),
            Image.asset('assets/images/next_icon.png'),
          ],
        ),
      ),
    );
  }
}
