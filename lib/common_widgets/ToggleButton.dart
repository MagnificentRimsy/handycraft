import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter/material.dart';
class toggleButton extends StatefulWidget {
  Function onChange;
  double buttonWidth;
  double buttonHeight;
  double disableHeight;
  double disableWidth;
  double enableHeight;
  double enableWidth;
  Color enableColor;
  Color disableColor;
  Color dotColor;
  bool value;
  toggleButton({@required this.value,this.onChange,this.buttonWidth,this.buttonHeight,this.disableHeight,this.disableWidth,this.enableHeight,this.enableWidth,this.enableColor,this.disableColor,this.dotColor});
  @override
  _toggleButtonState createState() => _toggleButtonState();
}

class _toggleButtonState extends State<toggleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
//        buttonEnable = !buttonEnable;
        widget.onChange(!widget.value);
      },
      child: Container(
        width: widget.buttonWidth??size.convertWidth(context, 40),

        decoration: BoxDecoration(
            color: widget.value? widget.enableColor??blueColor:widget.disableColor??greyColor,
            borderRadius: BorderRadius.circular(size.convert(context, 20))),
        child: Row(
            mainAxisAlignment: !widget.value ? MainAxisAlignment.start : MainAxisAlignment.end,
          children: [
                Container(
                  margin: EdgeInsets.all(size.convertWidth(context, 2)),
                  height: widget.enableHeight??size.convert(context, 20),
                  width: widget.enableWidth??size.convert(context, 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor),
                )
          ],
        ),
      ),
    );
  }
}
