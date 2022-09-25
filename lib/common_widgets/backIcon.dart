import 'package:get/get.dart';
import 'package:handycraft/UIScreen/services.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
class backIcon extends StatelessWidget {
  Function ontap;
  backIcon({this.ontap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        width: size.convert(context, 50),
        height: size.convert(context, 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(size.convert(context, 15)),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey,
          //     offset: Offset(0.3,0.3),
          //     spreadRadius: 2,
          //     blurRadius: 20
          //   )
          // ],
          border: Border.all(
            color: Colors.grey.withOpacity(0.3),
            width: 1
          )
        ),
        child: Icon(Icons.keyboard_backspace, color: blueColor,
          size: size.convert(context, 25),),
      ),
    );
  }
}

class squareButton extends StatelessWidget {
  Function ontap;
  IconData icon;
  Color backgroundColor = Colors.white;
  Color iconColor = blueColor;
  squareButton({this.ontap, this.icon, this.backgroundColor, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: size.convert(context, 50),
        height: size.convert(context, 50),
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(size.convert(context, 15)),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey,
            //     offset: Offset(0.3,0.3),
            //     spreadRadius: 2,
            //     blurRadius: 20
            //   )
            // ],
            border: Border.all(
                color: Colors.grey.withOpacity(0.3),
                width: 1
            )
        ),
        child: Icon(icon, color: iconColor,
          size: size.convert(context, 25),),
      ),
    );
  }
}
