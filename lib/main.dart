import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/services.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/UIScreen/splashSreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'UIScreen/introScreen.dart';
import 'UIScreen/signUpScreen.dart';
import 'UIScreen/viewService.dart';
import 'UIScreen/workerRegister.dart';
import 'bindings/databinding.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          title: 'handycraft',
          theme: ThemeData(
            primarySwatch: Colors.purple,
            scaffoldBackgroundColor: Colors.white
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: '/' ,

              getPages: [
                  GetPage(name: '/', page: () => SplashScreen()),
              
                  GetPage(name: '/intro', page: () =>   IntroScreen(),  transition: Transition.leftToRightWithFade ),

                  GetPage(name: '/login', page: () => SignInScreen(), binding: DataBinding()),
                  GetPage(
                    name: '/register',
                    page: () => SignUpScreen(),
                    binding: DataBinding(),
                  ),
                  GetPage(name: '/dashboard', page: () =>   HomeExplore(), binding: DataBinding(),  transition: Transition.leftToRightWithFade ),

                  GetPage(name: '/serviceproviders', page: () => ServiceProviders(), binding: DataBinding()),
                  GetPage(name: '/servicedetails', page: () => ViewService(), binding: DataBinding()),
                GetPage(name: '/workerRegister', page: () => WorkerRegister(), binding: DataBinding()),


            
          ],
        );
      }
    );
  }
}
