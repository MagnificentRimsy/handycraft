import 'dart:io';

import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class circularImage extends StatelessWidget {
  String imageUrl;
  double h;
  double w;
  bool assetImage;
  bool fileImage;
  File file;
  Color color;
  Function ontap;

  circularImage(
      {this.file,
      this.imageUrl,
      this.fileImage,
      this.h,
      this.w,
      this.assetImage = false,
      this.color,
        this.ontap
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: h == null ? 24 : h,
        width: w == null ? 24 : w,
        decoration: BoxDecoration(
            color: color??greyColor,
            shape: BoxShape.circle,
            image: imageUrl == null
                ? null
                : DecorationImage(
                    image: fileImage??false
                        ? FileImage(file)
                        : assetImage
                            ? AssetImage(imageUrl)
                            : NetworkImage(imageUrl),
                    fit: BoxFit.cover
            )),
      ),
    );
  }
}

class circularCenterImage extends StatelessWidget {
  String imageUrl;
  double h;
  double w;
  bool assetImage;
  bool fileImage;
  File file;
  Color color;

  circularCenterImage(
      {this.file,
        this.imageUrl,
        this.fileImage,
        this.h,
        this.w,
        this.assetImage = false,
        this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(
      //   size.convert(context, 10),
      // ),
      // height: h == null ? 24/
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(
          width: 1,
          color: Colors.grey.withOpacity(0.4)
        ),
          borderRadius: BorderRadius.circular(size.convert(context, 10)),
           ),
      child: imageUrl == null
          ? Container()
          :  fileImage??false
            ? FileImage(file)
            : assetImage
            ? Image.asset(imageUrl,
              // width: size.convert(context, h??60),
              // height: size.convert(context, w??60),
              )
            : NetworkImage(imageUrl),

    );
  }
}
