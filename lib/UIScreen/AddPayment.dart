import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/RadioButton.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/ToggleButton.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AddPayment extends StatefulWidget {
  @override
  _AddPaymentState createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.convert(context, 80)),
        child: CustomAppBar(
          color1: Colors.transparent,
          color2: Colors.transparent,
          hight: size.convert(context, 80),
          parentContext: context,
          centerWigets: AppBarTitleStyle(
            text: "Add Payment",
          ),
          leadingIcon: backIcon(),
          trailingIcon: circularCenterImage(
            imageUrl: "assets/icons/ProfileImage.png",
            assetImage: true,
            // w: size.convertWidth(context, 12),
            // h: size.convertWidth(context, 12),
          ),
        ),
      ),
      body: _body(),
    );
  }
  _body(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.convertWidth(context, 25)
      ),
      child: SingleChildScrollView(
        child: Container(

          height: MediaQuery.of(context).size.height - size.convert(context, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          top: size.convert(context, 50),
                          bottom: size.convert(context, 25)
                        ),
                        child: Text("Add Payment",
                          style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 16),
                            color: Colors.black
                          ),
                        ),
                      ),
                    CustomTextField(
                      color1: Color(0xFFE7E3E3),
                       hints: "Cardholder name",
                    ),
                    SpacebetweenTextField(spacing: 10,),
                    CustomTextField(
                      color1:Color(0xFFE7E3E3),
                      hints: "Card number",
                    ),
                    SpacebetweenTextField(spacing: 10,),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextField(
                            w: size.convertWidth(context, 160),
                            color1:Color(0xFFE7E3E3),
                            hints: "Card number",
                          ),
                          CustomTextField(
                            w: size.convertWidth(context, 160),
                            color1:Color(0xFFE7E3E3),
                            hints: "Card number",
                          ),
                        ],
                      ),
                    ),
                    SpacebetweenTextField(spacing: 20,),

                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text("Make Default",
                              style: style.PoppinsSemiBold(
                                  fontSize: size.convert(context, 14),
                                  color: Colors.black
                              ),
                            ),
                          ),
                          toggleButton(
                            buttonWidth: size.convertWidth(context, 50),
                            value: toggle,
                            onChange: (val){
                              setState(() {
                                toggle = val;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    // SpacebetweenTextField(spacing: 60,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: size.convert(context, 20)),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    filledButton(
                      w: size.convertWidth(context, 160),
                      txt: "Cancel",
                      onTap: (){
                        Navigator.pop(context);
                      },
                      color1: Colors.white,
                      txtcolor: Colors.black,
                      borderColor: blueColor,
                      borderwidth: 2,
                      fontsize: size.convert(context, 16),
                      borderRadius: 20,
                    ),

                    filledButton(
                      w: size.convertWidth(context, 160),
                      txt: "Save",
                       onTap: (){
                        Navigator.pop(context);
                      },
                      color1: blueColor,
                      fontsize: size.convert(context, 16),
                      borderRadius: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
