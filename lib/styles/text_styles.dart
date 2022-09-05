import 'dart:ui';

import 'package:flutter/material.dart';
class style{
  static TextStyle PoppinsBlack({double fontSize = 30 , String fontFamily = "PoppinsBlack", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }
  static TextStyle PoppinsBlackItalic({double fontSize = 20 , String fontFamily = "PoppinsBlackItalic", Color color = Colors.white,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsBold({double fontSize = 9 , String fontFamily = "PoppinsBold", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static TextStyle PoppinsBoldItalic({double fontSize = 9 , String fontFamily = "PoppinsBoldItalic", Color color = Colors.black,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsExtraBold({double fontSize = 30 , String fontFamily = "PoppinsExtraBold", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }
  static TextStyle PoppinsExtraBoldItalic({double fontSize = 20 , String fontFamily = "PoppinsExtraBoldItalic", Color color = Colors.white,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsExtraLight({double fontSize = 9 , String fontFamily = "PoppinsExtraLight", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static TextStyle PoppinsExtraLightItalic({double fontSize = 9 , String fontFamily = "PoppinsExtraLightItalic", Color color = Colors.black,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsItalic({double fontSize = 30 , String fontFamily = "PoppinsItalic", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }
  static TextStyle PoppinsLight({double fontSize = 20 , String fontFamily = "PoppinsLight", Color color = Colors.white,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsLightItalic({double fontSize = 9 , String fontFamily = "PoppinsLightItalic", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static TextStyle PoppinsMedium({double fontSize = 9 , String fontFamily = "PoppinsMedium", Color color = Colors.black,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsMediumItalic({double fontSize = 30 , String fontFamily = "PoppinsMediumItalic", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }
  static TextStyle PoppinsRegular({double fontSize = 20 , String fontFamily = "PoppinsRegular", Color color = Colors.white,FontWeight fontWeight = FontWeight.normal, double height: 1}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight,
        height: height
    );
  }

  static TextStyle PoppinsSemiBold({double fontSize = 9 , String fontFamily = "PoppinsSemiBold", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      height: 1
    );
  }

  static TextStyle PoppinsSemiBoldItalic({double fontSize = 9 , String fontFamily = "PoppinsSemiBoldItalic", Color color = Colors.black,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }

  static TextStyle PoppinsThin({double fontSize = 9 , String fontFamily = "PoppinsThin", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
    );
  }

  static TextStyle PoppinsThinItalic({double fontSize = 9 , String fontFamily = "PoppinsThinItalic", Color color = Colors.black,FontWeight fontWeight = FontWeight.w700}){
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight
    );
  }
  static BoxDecoration boxDecoveraton({Color color,double radius}){
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius??10),
      color: color??Colors.white,

    );
  }

}