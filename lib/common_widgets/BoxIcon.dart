import 'package:handycraft/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
class BoxIcon extends StatelessWidget {
  Function ontap;
  Widget CustomIcon;
  Color bgColor;
  Color borderColor;
  double borderRadius;
  double borderWidth;
  double h;
  double w;
  BoxIcon({this.ontap,this.bgColor,this.CustomIcon,this.borderRadius,this.borderColor,this.borderWidth,this.h,this.w});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: size.convert(context, w??50),
        height: size.convert(context, h??50),
        decoration: BoxDecoration(
          color: bgColor??Colors.white,
          borderRadius: BorderRadius.circular(size.convert(context, borderRadius??15)),
          border: Border.all(
            color: borderColor??Colors.grey.withOpacity(0.3),
            width: borderWidth??1
          )
        ),
        child: CustomIcon??Container(),
      ),
    );
  }
}
