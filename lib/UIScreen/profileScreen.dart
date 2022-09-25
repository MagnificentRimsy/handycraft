import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/resetPassword.dart';
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
import 'package:flutter/painting.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../common_widgets/CustomBottomAppBar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedGender = 1;

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        appBar:AppBar(
           backgroundColor: Colors.transparent, elevation: 0, centerTitle: true, title: Text(
                "Profile",
                style: style.PoppinsSemiBold(
                  color: Colors.black,
                  fontSize: size.convert(context, 22),
                ),),
    
         ),
       
        body: _body(),
        bottomNavigationBar: CustomBottomBar(
        select: 2,
      ),
        
        );
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    "assets/images/user.png",
                    width: 120,
                    height: 120,
                  ),
                ),
              ],
            ),
            SpacebetweenTextField(),
            Container(
              child: CustomTextField(
                color1: Color(0xFFCACACA),
                hints: "Name",
              ),
            ),
            SpacebetweenTextField(),
            Container(
              child: CustomTextField(
                color1: Color(0xFFCACACA),
                hints: "Email",
              ),
            ),
            SpacebetweenTextField(),
            Container(
              child: CustomTextField(
                color1: Color(0xFFCACACA),
                hints: "Phone Number",
              ),
            ),
            SpacebetweenTextField(),
            Container(
              child: CustomTextField(
                color1: Color(0xFFCACACA),
                hints: "Address",
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
                          child: ResetPasswordScreen(),
                          type: PageTransitionType.fade));
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: " Change Password",
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 12),
                            color: blueColor,
                            fontWeight: FontWeight.bold)),
                  ]),
                ),
              ),
            ),
            SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Gender",
                style:
                    style.PoppinsSemiBold(fontSize: size.convert(context, 14)),
              ),
            ),
            SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Wrap(
                spacing: 10,
                children: [
                  {"index": 1, "text": "Female"},
                  {"index": 2, "text": "Male"},
                 
                ]
                    .map((item) => Container(
                            child: filledButton(
                          onTap: () {
                            setState(() {
                              selectedGender = item["index"];
                            });
                          },
                          w: size.convertWidth(context, 110),
                          txt: item["text"].toString(),
                          color1: selectedGender == item["index"]
                              ? Color(0xff5034a3)
                              : Colors.white,
                          borderColor: greyColor,
                          txtcolor: selectedGender == item["index"]
                              ? Colors.white
                              : Colors.black,
                        )))
                    .toList()
                    .cast<Widget>(),
              ),
            ),
            SpacebetweenTextField(
              spacing: 40,
            ),
            Container(
              child: filledButton(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: HomeExplore(),
                          type: PageTransitionType.fade));
                },
                txt: "Save",
                fontsize: size.convert(context, 15),
                color1: ButtonColor,
                borderRadius: 15,
                fontWeight: FontWeight.bold,
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
