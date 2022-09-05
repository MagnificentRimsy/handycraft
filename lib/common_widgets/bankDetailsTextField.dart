import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

bankDetailsTextField({hint = '', suffixIcon = null}){
  return Container(
    margin: EdgeInsets.only(bottom: 15),
    height: 70,
    decoration: BoxDecoration(
      border: Border.all(color: Color(0xff969696), width: 0.8),
      borderRadius: BorderRadius.circular(10),
      color: Color(0xffF9F9F9),
    ),
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          suffixIcon: suffixIcon,
          hintStyle: style.PoppinsRegular(fontSize: 15, color: Color(0xff8B8B8B))
        ),
      ),
    ),
  );
}