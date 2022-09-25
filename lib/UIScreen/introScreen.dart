import 'package:get/get.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';

void main() => runApp(IntroScreen());

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int selectedIndex = 1;
  List onboardingImage = [
    {
      "index": 1,
      "icon": "assets/icons/onboarding_1.png",
      "text": "Set your Location"
    },
    {
      "index": 2,
      "icon": "assets/icons/onboarding_2.png",
      "text": "Searh for services near you"
    },
    {
      "index": 3,
      "icon": "assets/icons/onboarding_3.png",
      "text": "Book for services"
    }
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    height: size.convert(context, 500),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft:
                              Radius.circular(size.convert(context, 40)),
                          bottomRight:
                              Radius.circular(size.convert(context, 40)),
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff5034a3), Color(0xff5034a3)])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          child: Image.asset(
                            onboardingImage[selectedIndex - 1]["icon"],
                            width: 200,
                            height: 200,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                            child: Text(
                          onboardingImage[selectedIndex - 1]["text"],
                          style: style.PoppinsSemiBold(
                            color: Colors.white,
                            fontSize: size.convert(context, 20),
                          ),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.convert(context, 15),
                  ),
                  Container(
                    child: Wrap(
                      children: onboardingImage
                          .map((item) => Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: size.convert(context, 2)),
                                width: item["index"] == selectedIndex
                                    ? size.convertWidth(context, 27)
                                    : size.convert(context, 5),
                                height: size.convert(context, 6),
                                decoration: BoxDecoration(
                                    color: item["index"] == selectedIndex
                                        ? blueColor
                                        : blueColor,
                                    borderRadius: BorderRadius.circular(
                                        size.convert(context, 4))),
                              ))
                          .toList()
                          .cast<Widget>(),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.convertWidth(context, 30),
                    vertical: size.convert(context, 15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        'Skip',
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 14),
                            color: Colors.black,
                            fontWeight: FontWeight.w800),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                    ),

                    Row(
                      children: [
                        InkWell(
                          child: Text(
                            'Next',
                            style: style.PoppinsRegular(
                                fontSize: size.convert(context, 14),
                                color: Colors.red,
                                fontWeight: FontWeight.w800),
                          ),
                          onTap: () {
                            setState(() {
                              if (selectedIndex < 3) {
                                selectedIndex = selectedIndex + 1;
                              } else if (selectedIndex == 3) {
                                print("Navigate to next Screen");
                                Get.toNamed('/register');
                              }
                            });
                          },
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.red,
                        )
                      ],
                    ),
                    // filledButton(
                    //   w: size.convertWidth(context, 100),
                    //   h: size.convert(context, 25),
                    //   color1: darkBlueColor,
                    //   borderColor: darkBlueColor,
                    //   txt: "Skip",

                    // ),

                    // filledButton(
                    //   color1: darkBlueColor,
                    //   borderColor: darkBlueColor,
                    //   onTap: () {
                    //     setState(() {
                    //       if (selectedIndex < 3) {
                    //         selectedIndex = selectedIndex + 1;
                    //       } else if (selectedIndex == 3) {
                    //         print("Navigate to next Screen");
                    //         Navigator.pushReplacement(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => SignUpScreen()));
                    //       }
                    //     });
                    //   },
                    //   w: size.convertWidth(context, 100),
                    //   h: size.convert(context, 25),
                    //   txt: "Next",
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
