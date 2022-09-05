import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/resetPassword.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
import 'package:handycraft/UIScreen/test.dart';
import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
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

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int selectedGender = 1;

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  bool _value = false;

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
                "Notifications",
                style: style.PoppinsSemiBold(
                  color: Colors.black,
                  fontSize: size.convert(context, 22),
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
                  "Delete All Notifications",
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
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpacebetweenTextField(
              spacing: 40,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: blueColor),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                leading: Image.asset(
                  "assets/images/calendar.png",
                ),
                title: Text(
                  'Booking Confirmed',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),
            SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: blueColor),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              /** CheckboxListTile Widget **/
              child: ListTile(
                leading: Image.asset(
                  "assets/images/star.png",
                ),
                title: Text(
                  'Review Approved',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),
            SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              child: ListTile(
                leading: Image.asset(
                  "assets/images/calendar_red.png",
                ),
                title: Text(
                  'Booking Cancelled',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),
             SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              child: ListTile(
                leading: Image.asset(
                  "assets/images/calendar_grey.png",
                ),
                title: Text(
                  'Booking Pending',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),
             SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              child: ListTile(
                leading: Image.asset(
                  "assets/images/calendar.png",
                ),
                title: Text(
                  'Booking Confirmed',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),

             SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              child: ListTile(
                leading: Image.asset(
                  "assets/images/calendar_red.png",
                ),
                title: Text(
                  'Booking Cancelled',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Fantasia place has confirmed…',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
              ),
            ),
             SpacebetweenTextField(
              spacing: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[100]),
                borderRadius: BorderRadius.circular(5),
              ), //BoxDecoration

              child: ListTile(
                leading: Image.asset(
                  "assets/images/star.png",
                ),
                title: Text(
                  'Review Approved',
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 12), color: Colors.black),
                ),
                subtitle: Text(
                  'Your review for Fantasia place has been… ',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
                trailing: Text(
                  '12:00',
                  style: style.PoppinsLight(
                      fontSize: size.convert(context, 10), color: Colors.grey),
                ),
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
