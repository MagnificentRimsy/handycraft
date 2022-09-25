import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
class MenuTextStyle extends StatelessWidget {
  String text;
  
  MenuTextStyle({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text??"",
        style: style.PoppinsRegular(
          color: Colors.black,
          fontSize: size.convert(context, 16),
        ),
      ),
    );
  }
}
