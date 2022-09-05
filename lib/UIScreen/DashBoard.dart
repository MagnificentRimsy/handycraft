import 'package:handycraft/UIScreen/AddPayment.dart';
import 'package:handycraft/UIScreen/Dashboard%20Screens/Payments.dart';
import 'package:handycraft/UIScreen/Dashboard%20Screens/Reviews.dart';
import 'package:handycraft/UIScreen/Notifications.dart';
import 'package:handycraft/UIScreen/Settings.dart';
import 'package:handycraft/UIScreen/privacy.dart';
import 'package:handycraft/UIScreen/profileScreen.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/MenuTextStyle.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/color.dart';
import 'package:page_transition/page_transition.dart';
class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
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
            leadingIcon: backIcon(),
            trailingIcon: circularCenterImage(
              imageUrl: "assets/icons/ProfileImage.png",
              assetImage: true,
              // w: size.convertWidth(context, 12),
              // h: size.convertWidth(context, 12),
            ),
          ),
        ),
        body: _body(),
      bottomNavigationBar: Container(
        height: size.convert(context, 50),
        decoration: BoxDecoration(
          color: textFieldBgColor,
        ),
        child: Center(
          child: Text("Sign out",style: style.PoppinsRegular(
              fontSize: size.convert(context, 15),
            color: Colors.black
          ),
          ),
        ),
      ),
    );
  }
  _body(){
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.convertWidth(context, 25)
      ),
      child: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: size.convert(context, 20),
                bottom: size.convert(context, 50)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: RichText(
                      text: TextSpan(
                        text: "Lady Summaya",
                        style: style.PoppinsSemiBold(
                          fontSize: size.convert(context, 22)
                        )
                      ),
                    ),
                  ),
                  Container(
                    child: RichText(
                      text: TextSpan(
                          text: "Joined 3rd of Jan 2019",
                          style: style.PoppinsRegular(
                              fontSize: size.convert(context, 10),
                            color: Colors.black
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            menu(),
          ],
        ),
      ),
    );
  }

  menu(){
    Widget space = SizedBox(width: size.convertWidth(context, 20),);
    Widget spaceHeight = SizedBox(height: size.convertWidth(context, 10),);
    return Container(
      child: Column(
        children: [
          InkWell(
            onTap: (){
                            Navigator.push(context, PageTransition(child: ProfileScreen(), type: PageTransitionType.fade));

            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/Profile.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Profile",)),
                ],
              ),
            ),
          ),
          spaceHeight,

          InkWell(
            onTap: (){
              Navigator.push(context, PageTransition(child: Reviews(), type: PageTransitionType.fade));
            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/Review.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Review",)),
                ],
              ),
            ),
          ),
          spaceHeight,

          InkWell(
            onTap: (){
              Navigator.push(context, PageTransition(child: Payments(), type: PageTransitionType.fade));
            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/Payment.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Payments",)),
                ],
              ),
            ),
          ),
          spaceHeight,

          InkWell(
            onTap: (){
                            Navigator.push(context, PageTransition(child: NotificationsScreen(), type: PageTransitionType.fade));

            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/notification.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Notifications",)),
                ],
              ),
            ),
          ),
          spaceHeight,

          InkWell(
            onTap: (){
                            Navigator.push(context, PageTransition(child: SettingsScreen(), type: PageTransitionType.fade));

            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/Settings.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Settings",)),
                ],
              ),
            ),
          ),
          spaceHeight,

          InkWell(
            onTap: (){
                                Navigator.push(context, PageTransition(child: PrivacyPolicyScreenScreen(), type: PageTransitionType.fade));

            },
            child: Container(
              child: Row(
                children: [
                  BoxIcon(
                    CustomIcon: Image.asset("assets/icons/Privacy.png"),
                    bgColor: textFieldBgColor,
                  ),
                  space,
                  Expanded(child: MenuTextStyle(text: "Privacy",)),
                ],
              ),
            ),
          ),
          spaceHeight,
        ],
      ),
    );
  }

}
