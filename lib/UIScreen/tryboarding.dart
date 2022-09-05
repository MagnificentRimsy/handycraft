

import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/styles.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        
         SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 25.0,
                      color: Colors.white,
                    )
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              "assets/images/onboarding_2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text("Set your Location",
                        style: style.PoppinsSemiBold(
                          color: Color(0xffffffff),
                          fontSize: size.convert(context, 16),
                        )),
                    SpacebetweenTextField(
                      spacing: 50,
                    ),
                  ],
                ),
              ),
            
             
            ],
          ),
        ),
      ),
    );
  }
}
