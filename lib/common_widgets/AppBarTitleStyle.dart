import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
class AppBarTitleStyle extends StatelessWidget {
  String text;
  AppBarTitleStyle({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text??"",style: style.PoppinsSemiBold(
        color: Colors.black,
        fontSize: size.convert(context, 20)
      ),),
    );
  }
}
