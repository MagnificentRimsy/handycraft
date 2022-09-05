import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
class TextLineThrough extends StatelessWidget {
  String text;
  bool disableText = true;
  double LineWidth;
  double LineHight;
  TextLineThrough({this.text,this.disableText,this.LineHight,this.LineWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
            Text(text??"no text",
                overflow: TextOverflow.clip,
                style: style.PoppinsRegular(
                    fontSize: size.convert(context, 15),
                    fontFamily: "RobotoRegular",
                )
            ),
            disableText?Container(
              width: LineWidth??size.convertWidth(context, 10),
              height: LineHight??size.convert(context, 2),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ):Container(),
      ],
      ),
    );
  }
}
