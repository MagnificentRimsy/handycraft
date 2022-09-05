

import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  Color color1;
  Color hintColor;
  Widget iconWidget;
  Function onchange;
  Function onSubmit;
  String hints;
  Widget trailingIcon ;
  double borderwidth;
  double h;
  double w;
  double borderRadius;
  TextInputType textInputType;
  TextEditingController textEditingController;
  bool obscureText;
  bool isEnable;
  CustomTextField({this.isEnable=true,this.obscureText,this.textInputType,this.borderwidth,this.trailingIcon,this.hints,this.color1, this.iconWidget,this.textEditingController,this.onchange,this.onSubmit,this.hintColor,this.borderRadius,this.w,this.h});
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.w??MediaQuery.of(context).size.width,
      height: widget.h??size.convert(context, 55),
      padding: EdgeInsets.only(right: 5, left: 5),
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(
            color: borderColor??widget.color1,
            width: widget.borderwidth==null ? 1.2 : widget.borderwidth ,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius?? 5)
      ),
      child: Row(
        children: <Widget>[
          widget.iconWidget == null ? Container() : widget.iconWidget,
          SizedBox(width: 10,),
          Expanded(
            child: Focus(
              onFocusChange:  (val){
                if(val){
                  borderColor = blueColor;
                  setState(() {});
                }
                else{
                  widget.onSubmit!= null ? widget.onSubmit() : (){};
                  borderColor = null;
                  setState(() {});
                }

                print(val);
              },
              child: TextFormField(
                // onFieldSubmitted: widget.onSubmit??(val){
                //   print("field submited");fss
                // },
                
                onChanged: widget.onchange??(val){},
                enabled: widget.isEnable,
                obscureText: widget.obscureText ?? false,
                keyboardType: widget.textInputType == null  ? TextInputType.text: widget.textInputType,
                controller: widget.textEditingController,
                decoration: InputDecoration(
                    // labelText: widget.hints == null ? "" : widget.hints,
                    disabledBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: widget.hints==null ? "":widget.hints,
                    hintStyle: style.PoppinsRegular(
                      color: widget.hintColor?? disableColor,
                      fontSize: 13
                    )
                ),
              ),
            ),
          ),
          widget.trailingIcon == null ? Container() : widget.trailingIcon,
        ],
      ),
    );
  }
}