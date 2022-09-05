import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/resetPassword.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
import 'package:handycraft/UIScreen/test.dart';
import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/ToggleButton.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int selectedGender = 1;

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  bool _value = false;
  bool toggle = true;
  bool toggle2 = true;
  bool toggle3 = true;
  bool toggle4 = true;
  bool toggle5 = true;

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
            centerWigets: Container(
              child: Text(
                "Settings",
                style: style.PoppinsSemiBold(
                  color: Colors.black87,
                  fontSize: size.convert(context, 16),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            trailingIcon: circularCenterImage(
              imageUrl: "assets/icons/ProfileImage.png",
              assetImage: true,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Deactivate Account",
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 14), color: Colors.red),
                ),
              ),
            ],
          ),
          elevation: 0,
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
            SpacebetweenTextField(
              spacing: 40,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(0),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                title: Text(
                  'Push Notification',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                trailing: toggleButton(
                  buttonWidth: size.convertWidth(context, 50),
                  value: toggle,
                  onChange: (val) {
                    setState(() {
                      toggle = val;
                    });
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(0),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                title: Text(
                  'App Notifications',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                trailing: toggleButton(
                  buttonWidth: size.convertWidth(context, 50),
                  value: toggle2,
                  onChange: (val) {
                    setState(() {
                      toggle2 = val;
                    });
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(0),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                title: Text(
                  'Email',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                trailing: toggleButton(
                  buttonWidth: size.convertWidth(context, 50),
                  value: toggle3,
                  onChange: (val) {
                    setState(() {
                      toggle3 = val;
                    });
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(0),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                title: Text(
                  'Connected',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 10), color: Colors.black),
                ),
                subtitle:Text(
                  'Google',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ), 
                trailing: toggleButton(
                  buttonWidth: size.convertWidth(context, 50),
                  value: toggle4,
                  onChange: (val) {
                    setState(() {
                      toggle4 = val;
                    });
                  },
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(0),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                title: Text(
                  'About handycraft',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                trailing: toggleButton(
                  buttonWidth: size.convertWidth(context, 50),
                  value: toggle5,
                  onChange: (val) {
                    setState(() {
                      toggle5 = val;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
