
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class filledButton extends StatelessWidget {
  final Function onTap;
  Color color1;
  Color txtcolor;
  String txt;
  double h;
  double w;
  Color  borderColor;
  double borderwidth;
  double fontsize;
  double borderRadius;
  String fontfamily;
  Widget leftWidget;
  Widget rigtWidget;
  dynamic fontWeight;

  filledButton({ this.fontWeight, this.borderColor,this.borderwidth,this.fontfamily,this.color1, this.txt,this.h,this.w,this.txtcolor,this.fontsize,this.leftWidget,this.rigtWidget, this.onTap,this.borderRadius});
  @override
  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        height: h ?? size.convert(context, 55),
        width: w ?? size.convertWidth(context, 368),
        decoration: BoxDecoration(
            color: color1 == null ? appColor.withOpacity(0.60) : color1 ,
            borderRadius: BorderRadius.circular(borderRadius??5),
            border: Border.all(
            width: borderwidth == null ? 0 : borderwidth,
              color: borderColor == null ? appColor : borderColor,
        )
        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            
            leftWidget??Container(),
            SizedBox(width: 5,),
            Container(
              // alignment: Alignment.bottomCenter,
              // color: Colors.yellow,
              child: Text(txt ==null ?"Empty":txt,
                  style: style.PoppinsRegular(
                    fontSize: fontsize??size.convert(context, 16),
                    color: txtcolor??whiteColor,
                    fontWeight: fontWeight?? FontWeight.normal
                  ),
                ),
            ),
            rigtWidget??Container(),
          ],
        ),

      ),
    );
  }
}

class filledButtonWithCenterIcon extends StatelessWidget {
  final Function onTap;
  Color color1;
  Color txtcolor;
  String txt;
  String SvgIcon;
  double h;
  double w;
  Color  borderColor;
  double borderwidth;
  double fontsize;
  String fontfamily;
  Widget leftWidget;
  Widget rigtWidget;

  filledButtonWithCenterIcon({this.borderColor,this.borderwidth,this.fontfamily,this.color1, this.txt,this.h,this.w,this.txtcolor,this.fontsize,this.leftWidget,this.rigtWidget, this.onTap,this.SvgIcon});
  @override
  Widget build(BuildContext context) {
    Size size1 = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(right: 10, left: 10),
        height: h ?? size1.longestSide*0.07202928 ,
        width: w ?? size.convertWidth(context, 368),
        decoration: BoxDecoration(
            color: color1 == null ? appColor : color1 ,
            borderRadius: BorderRadius.circular(5),

        ),
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            leftWidget??Container(),

            Row(

              children: [
                // SvgIcon == null ? Container() :  SvgPicture.asset(SvgIcon),
                SizedBox(width: size.convertWidth(context, 6),),
                Text(txt ==null ?"Empty":txt,
                  style: style.PoppinsRegular(
                      fontSize: fontsize??size.convert(context, 16),
                      color: whiteColor
                  ),
                ),
              ],
            ),
            rigtWidget??Container(),
          ],
        ),

      ),
    );
  }
}