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

class PrivacyPolicyScreenScreen extends StatefulWidget {
  @override
  _PrivacyPolicyScreenScreenState createState() => _PrivacyPolicyScreenScreenState();
}

class _PrivacyPolicyScreenScreenState extends State<PrivacyPolicyScreenScreen> {
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
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
              child: Text(
                "Terms of Use",
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
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea. ",
                    style: style.PoppinsLight(
                      color: Color(0xFF2C2F30),
                      fontSize: size.convert(context, 12),
                    )),
              ),
            ),
            SpacebetweenTextField(),
            Container(
              child: RichText(
                text: TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea.",
                    style: style.PoppinsLight(
                      color: Color(0xFF2C2F30),
                      fontSize: size.convert(context, 12),
                    )),
              ),
            ),
            SpacebetweenTextField(
              spacing: 20,
            ),
            SpacebetweenTextField(
              spacing: 60,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  filledButton(
                  
                    txt: "Cancel",
                    txtcolor: blueColor,
                    fontsize: size.convert(context, 12),
                    w: 160,
                    fontWeight: FontWeight.bold,
                    color1: Colors.white,
                    borderRadius: 15,
                  ),
                  filledButton(
                   
                    txt: "Accept all",
                    fontsize: size.convert(context, 12),
                    w: 160,
                     onTap: (){
                        Navigator.pop(context);
                      },
                    txtcolor: Colors.white,
                    color1: blueColor,
                    borderColor: greyColor,
                    borderwidth: 2,
                    fontWeight: FontWeight.bold,
                    borderRadius: 15,
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
