import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/UIScreen/test.dart';
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

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
              child: Text(
                "Reset Password",
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
                    text:
                        "Please enter your email address to request a Password reset.",
                    style: style.PoppinsLight(
                      color: Color(0xFF2C2F30),
                      fontSize: size.convert(context, 12),
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
            SpacebetweenTextField(
              spacing: 60,
            ),
            Container(
              child: Column(
                children: [
                  filledButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomeExplore(),
                              type: PageTransitionType.fade));
                    },
                    txt: "Reset Password ",
                    fontWeight: FontWeight.bold,
                    fontsize: size.convert(context, 12),
                    color1: ButtonColor,
                    borderRadius: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  filledButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: SignInScreen(),
                              type: PageTransitionType.fade));
                    },
                    txt: "Cancel ",
                    fontsize: size.convert(context, 12),
                    color1: Colors.transparent,
                    borderRadius: 15,
                    fontWeight: FontWeight.bold,
                    txtcolor: Color(0xff5034a3),
                  ),
                ],
              ),
            ),
            SpacebetweenTextField(
              spacing: 20,
            ),
          ],
        ),
      ),
    );
  }
}
