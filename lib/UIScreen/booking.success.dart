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

class BookingSuccessScreen extends StatefulWidget {
  @override
  _BookingSuccessScreenState createState() => _BookingSuccessScreenState();
}

class _BookingSuccessScreenState extends State<BookingSuccessScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _scaffoldkey, body: _body());
  }

  _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpacebetweenTextField(
              spacing: 60,
            ),
            buildImageCard(),
            SpacebetweenTextField(
              spacing: 30,
            ),
            Container(
              width: 337,
              child: RichText(
                text: TextSpan(
                    text:
                        "Please check your email and/or SMS for the booking confirmation sent to you.",
                    style: style.PoppinsLight(
                      color: Color(0xFF2C2F30),
                      fontSize: size.convert(context, 12),
                    )),
                textAlign: TextAlign.center,
              ),
            ),
            SpacebetweenTextField(
              spacing: 160,
            ),
            buildBottomLinks()
          ],
        ),
      ),
    );
  }

  Widget buildBottomLinks() {
    return Container(
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
            txt: "Set Reminder",
            fontsize: size.convert(context, 12),
            color1: Colors.transparent,
            borderColor: Colors.transparent,
            fontWeight: FontWeight.bold,
            txtcolor: Colors.red,
            h: 10,
          ),
          SizedBox(
            height: 20,
          ),
          filledButton(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: Bookings(),
                      type: PageTransitionType.fade));
            },
            txt: "Ok, Got It ",
            fontWeight: FontWeight.bold,
            fontsize: size.convert(context, 12),
            color1: ButtonColor,
            borderRadius: 15,
          ),
        ],
      ),
    );
  }

  Widget buildImageCard() => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Ink.image(
            //   image: NetworkImage(
            //     'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',

            //   ),
            //   // colorFilter: ColorFilters.greyscale,
            //   child: InkWell(
            //     onTap: () {},
            //   ),
            //   height: 240,
            //   fit: BoxFit.cover,
            // ),

            Image.asset(
              "assets/images/success_booking.png",
              height: 240,
              fit: BoxFit.fill,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120),
              
              child: SizedBox(
                width: 90,
                height: 90,
                child: Image.asset('assets/images/success.png')
                
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Positioned(
              bottom: 30,
              child: Text(
                'Your booking has been sent!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
}
