import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
class BookingAlert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: size.convert(context, 378),
                color: Colors.transparent,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.convertWidth(context, 30)
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: size.convertWidth(context, 25)
                ),
                height: size.convert(context, 338),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(size.convert(context, 20)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SpacebetweenTextField(spacing: 40,),
                    Container(
                      child: Text("Your booking with Fantasia Place has  now been completed.",
                        style: style.PoppinsSemiBold(
                          fontSize: size.convert(context, 16)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SpacebetweenTextField(spacing: 10,),
                    Container(
                      child: Text("How was your experience? Please leave a review to help improve the service.",
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 14),
                          color: Colors.black
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SpacebetweenTextField(spacing: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        filledButton(
                          w: size.convertWidth(context, 133),
                          txt: "Not now",
                          onTap: (){
                            Navigator.pop(context);
                          },
                          color1: Colors.black,
                          fontsize: size.convert(context, 16),
                          borderRadius: 20,
                        ),

                        filledButton(
                          w: size.convertWidth(context, 133),
                          txt: "Review",
                          color1: blueColor,
                          fontsize: size.convert(context, 16),
                          borderRadius: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 7,
                child: BoxIcon(
                   CustomIcon: Container(child: Image.asset("assets/icons/tick.png")),
                  bgColor: Colors.white,
                  borderRadius: 40,
                  borderColor: blueColor,
                  borderWidth: 6,
                  w: 80,
                  h: 80,

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
