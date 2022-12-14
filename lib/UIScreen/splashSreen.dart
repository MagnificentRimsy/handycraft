import 'package:get/get.dart';
import 'package:handycraft/UIScreen/introScreen.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/tryboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(SplashScreen());

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () async{
    final prefs = await SharedPreferences.getInstance();
    final String userdata = prefs.getString('username');
      userdata != null ?  Get.offNamed('/login', preventDuplicates: true) :  Get.offNamed('/intro', preventDuplicates: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/s_logo.png")
              
            ),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xff5034a3), Color(0xFF121313)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child:
               Image.asset(
                "assets/images/logo.png",
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
