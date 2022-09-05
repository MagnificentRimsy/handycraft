import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
class circularTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.convertWidth(context, 15),
      height: size.convertWidth(context, 15),
      decoration: BoxDecoration(
        color: appColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(Icons.check,
        color: Colors.white,
        size: size.convert(context, 10),),
      ),
    );
  }
}
