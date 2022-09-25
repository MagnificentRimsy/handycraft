import 'package:handycraft/UIScreen/Bookings.dart';
import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/onboarding_three.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
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

class OnboardingTwoScreen extends StatefulWidget {
  @override
  _OnboardingTwoScreenState createState() => _OnboardingTwoScreenState();
}

class _OnboardingTwoScreenState extends State<OnboardingTwoScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
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
            clickOnDrawer: () {
              _scaffoldkey.currentState.openDrawer();
            },
            leadingIcon: Container(),

          ),
        ),
        body: _body());
  }

  _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
              child: Text(
                "Enable Location Services",
                style: style.PoppinsSemiBold(
                  color: Colors.black,
                  fontSize: size.convert(context, 20),
                ),
                textAlign: TextAlign.left,
              ),
            ),
              SpacebetweenTextField(
              spacing: 30,
            ),
            Container(
              child: Image.asset(
                "assets/images/location.png",
                fit: BoxFit.contain,
                width: 250,
              ),
            ),
              SpacebetweenTextField(
              spacing: 30,
            ),
            Container(
              width: 237,
              child: RichText(
                text: TextSpan(
                    text:
                        "By allowing geolocation you are giving handycraft permission to use your location.",
                    style: style.PoppinsLight(
                      color: Color(0xFF2C2F30),
                      fontSize: size.convert(context, 12),
                    )),
                    textAlign: TextAlign.center,
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
                              child: OnboardingThreeScreen(),
                              type: PageTransitionType.fade));
                    },
                    txt: "Enable Location ",
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
                              child: OnboardingThreeScreen(),
                              type: PageTransitionType.fade));
                    },
                    txt: "Not Now ",
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
              spacing: 40,
            ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                     child: Text(
                       "Skip",
                       style: style.PoppinsSemiBold(
                         color: Colors.black,
                         fontSize: size.convert(context, 12),
                       ),
                       textAlign: TextAlign.right,
                     ),
                     onTap: (){
                       Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeExplore(),
                                      type: PageTransitionType.fade));
                     },
                   ),
                 ],
               )
          ],
        ),
      ),
    );
  }
}
