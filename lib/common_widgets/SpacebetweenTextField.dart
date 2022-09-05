import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
class SpacebetweenTextField extends StatelessWidget {
  double spacing;
  SpacebetweenTextField({this.spacing});
  @override
  Widget build(BuildContext context) {
    return Container(height: size.convert(context, spacing??10),);
  }
}
