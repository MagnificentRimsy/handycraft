import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import 'onBoarding.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.convert(context, 80)),
        child: CustomAppBar(
          color1: Colors.transparent,
          color2: Colors.transparent,
          hight: size.convert(context, 80),
          parentContext: context,
          clickOnDrawer: (){
            _scaffoldkey.currentState.openDrawer();
          },
          leadingIcon: backIcon(),
        ),
      ),
        body: _body()
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
                      margin: EdgeInsets.symmetric(
                        vertical: size.convert(context, 20)
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: "Create a new Account",
                          style: style.PoppinsSemiBold(
                            color: Colors.black,
                            fontSize: size.convert(context, 30),
                          )
                        ),
                      ),
                    ),
                    Container(
                      child: CustomTextField(
                        color1: Color(0xFFE2E2E2),
                        hints: "Full Name",
                      ),
                    ),
                    SpacebetweenTextField(),
                    Container(
                      child: CustomTextField(
                        color1: Color(0xFFE2E2E2),
                        hints: "Email",
                      ),
                    ),
                    SpacebetweenTextField(),
                    Container(
                      child: CustomTextField(
                        color1: Color(0xFFE2E2E2),
                        hints: "Phone",
                      ),
                    ),
                    SpacebetweenTextField(),
                    Container(
                      child: CustomTextField(
                        color1: Color(0xFFE2E2E2),
                        hints: "Password",
                        trailingIcon: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.convertWidth(context, 10)
                          ),
                            child: Icon(Icons.lock,size: size.convert(context, 12),)),
                      ),
                    ),
                    SpacebetweenTextField(),
                    Container(
                      child: filledButton(
                        onTap: (){
                          Navigator.push(context, PageTransition(child:SignInScreen(), type: PageTransitionType.fade));
                        },
                        txt: "Sign Up",
                        fontsize: size.convert(context, 12),
                        color1: ButtonColor,
                        borderRadius: 15,
                      ),
                    ),
                    SpacebetweenTextField(),
                    Container(
                      child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                      style: style.PoppinsRegular(
                        fontSize: size.convert(context, 12),
                        color: Color(0xff434343),
                      )),
                  GestureDetector(
                    child: Text(" Sign In",
                        style: style.PoppinsRegular(
                          fontSize: size.convert(context, 12),
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    },
                  ),
                ],
              ),
                      // child: RichText(
                      //   text: TextSpan(
                      //     children: [
                      //       TextSpan(
                      //         text: "already have an account?",
                      //         style: style.PoppinsRegular(
                      //           fontSize: size.convert(context, 12),
                      //           color: Color(0xff434343),
                      //         )
                      //       ),
                      //       TextSpan(
                      //           text: " Sign In",
                      //           style: style.PoppinsRegular(
                      //             fontSize: size.convert(context, 12),
                      //             color: blueColor,
                      //           )
                      //       ),
                      //     ]
                      //   ),
                      // ),
                    ),
                    SpacebetweenTextField(spacing: 30,),
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: size.convert(context, 2),
                              color: Color(0xFFECE6E6),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: size.convertWidth(context, 5)
                            ),
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "Or sign up with",
                                        style: style.PoppinsRegular(
                                          fontSize: size.convert(context, 10),
                                          color: Color(0xff434343),
                                        )
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: size.convert(context, 2),
                              color: Color(0xFFECE6E6),
                            ),
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.convert(context, 20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   filledButton(
                    leftWidget: Icon(
                      Icons.facebook_sharp,
                      color: Color(0xFFFFFFFF),
                    ),
                    txt: "Facebook",
                    fontsize: size.convert(context, 12),
                    w: 170,
                    color1: darkBlueColor,
                    borderRadius: 15,
                  ),
                 
                  filledButton(
                    leftWidget: Image.asset(
                      
                      'assets/images/google.png',
                      height: 18,
                    ),
                    txt: "Google",
                    fontsize: size.convert(context, 12),
                    w: 170,
                    txtcolor: Colors.black,
                    color1: Colors.white,
                    borderColor: greyColor,
                    borderwidth: 2,
                    borderRadius: 15,
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
