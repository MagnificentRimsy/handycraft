import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/onboarding_four.dart';
import 'package:handycraft/UIScreen/onboarding_two.dart';
import 'package:handycraft/UIScreen/resetPassword.dart';
import 'package:handycraft/UIScreen/test.dart';
import 'package:handycraft/UIScreen/tryboarding.dart';
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
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            clickOnDrawer: () {
              _scaffoldkey.currentState.openDrawer();
            },
            leadingIcon: backIcon(),
          ),
        ),
        body: _body());
  }

  _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Image.asset(
                "assets/images/icon.png",
                width: 70,
                height: 70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
              child: Text(
                "Log in to",
                style: style.PoppinsSemiBold(
                  color: Colors.black,
                  fontSize: size.convert(context, 28),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              child: RichText(
                text: TextSpan(
                    text: "handycraft",
                    style: style.PoppinsSemiBold(
                      color: Color(0xff5034a3),
                      fontSize: size.convert(context, 16),
                    )),
              ),
            ),
            SpacebetweenTextField(),
            Container(
              child: CustomTextField(
                color1: Color(0xEFE7E3E3),
                hints: "Email",
              ),
            ),
            SpacebetweenTextField(
              spacing: 20,
            ),
            Container(
              child: CustomTextField(
                color1: Color(0xFFE7E3E3),
                obscureText: true,
                hints: "Password",
                trailingIcon: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.convertWidth(context, 10)),
                    child: Icon(
                      Icons.lock,
                      size: size.convert(context, 12),
                    )),
              ),
            ),
            SpacebetweenTextField(
              spacing: 25,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                   Navigator.push(
                      context,
                      PageTransition(
                          child: ResetPasswordScreen(), type: PageTransitionType.fade));
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: " Forgot Password",
                        style: style.PoppinsRegular(
                          fontSize: size.convert(context, 12),
                          color: blueColor,
                        )),
                  ]),
                ),
              ),
            ),
            SpacebetweenTextField(
              spacing: 25,
            ),
            Container(
              child: filledButton(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: OnboardingTwoScreen(), type: PageTransitionType.fade));
                },
                txt: "Sign In ",
                fontsize: size.convert(context, 12),
                color1: ButtonColor,
                borderRadius: 15,
              ),
            ),
            SpacebetweenTextField(
              spacing: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don\'t have an account?",
                      style: style.PoppinsRegular(
                        fontSize: size.convert(context, 12),
                        color: Color(0xff434343),
                      )),
                  GestureDetector(
                    child: Text(" Sign Up",
                        style: style.PoppinsRegular(
                          fontSize: size.convert(context, 12),
                          color: Color(0xFFFF3A2A),
                          fontWeight: FontWeight.bold,
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnboardingTwoScreen()));
                    },
                  ),
                ],
              ),
            ),
            SpacebetweenTextField(
              spacing: 30,
            ),
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
                        horizontal: size.convertWidth(context, 5)),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Or sign up with",
                            style: style.PoppinsRegular(
                              fontSize: size.convert(context, 10),
                              color: Color(0xff434343),
                            )),
                      ]),
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
            SpacebetweenTextField(
              spacing: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  filledButton(
                    leftWidget: Icon(
                      Icons.face_sharp,
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
    );
  }
}
