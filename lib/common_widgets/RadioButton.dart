
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
class RadioButton extends StatelessWidget {
  Function onchange;
  String text;
  bool disableText = true;
  bool buttonSelected = false;
  double LineWidth;
  double LineHight;
  RadioButton({this.onchange,this.text,this.disableText,this.buttonSelected,this.LineHight,this.LineWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: <Widget>[
        Row(
          children: <Widget>[
            InkWell(
              onTap:onchange,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 2,
                        color: buttonSelected ? appColor : Colors.black.withOpacity(0.6)
                    )
                ),
                child: buttonSelected ?Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appColor,
                      border: Border.all(
                          width: 1.5,
                          color: Colors.white
                      )
                  ),
                ) : Container(width: 0.1,height: 0.1,),
              ),
            ),
            SizedBox(width: size.convertWidth(context, 10),),
            Text(text??""),
          ],
        ),
      ],
      ),
    );
  }
}
