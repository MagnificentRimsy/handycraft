import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/onBoarding.dart';
import 'package:handycraft/UIScreen/onboarding_four.dart';
import 'package:handycraft/UIScreen/onboarding_two.dart';
import 'package:handycraft/UIScreen/resetPassword.dart';
import 'package:handycraft/UIScreen/test.dart';
import 'package:handycraft/UIScreen/tryboarding.dart';
import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/models/user_login.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import '../controllers/auth_controller.dart';
import '../models/user.dart';

class SignInScreen extends  GetView<AuthController>  {
  
  final GlobalKey<ScaffoldState> _loginscaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _loginscaffoldkey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.convert(context, 80)),
          child: CustomAppBar(
            color1: Colors.transparent,
            color2: Colors.transparent,
            hight: size.convert(context, 80),
            parentContext: context,
            clickOnDrawer: () {
              _loginscaffoldkey.currentState.openDrawer();
            },
            leadingIcon: backIcon(),
          ),
        ),
        body:Obx(
                  () => Container(
          margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
          child: SingleChildScrollView(
            child:     
                controller.isLoading.isTrue ?
      
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                              child: SpinKitSpinningLines(
                                color: ButtonColor,
                                size: 50,
                              ),
                            ),
                        ),
                      ],
                    )
                :
                
                Form(
                  key: controller.loginFormKey ,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Image.asset(
                          "assets/images/icon.png",
                          width: 70,
                          height: 70,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
                        child: Text(
                          "Log in to",
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
                              text: "handycraft",
                              style: style.PoppinsSemiBold(
                                color: Color(0xff5034a3),
                                fontSize: size.convert(context, 16),
                              )),
                        ),
                      ),
                      SpacebetweenTextField(),
                      Container(
                        child: CustomTextField(
                          textEditingController: controller.emailController,
                          color1: Color(0xEFE7E3E3),
                          hints: "Email",
                           validator: (value) {
                            if (value.length == 0) {
                              return "Email cannot be empty";
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return ("Please enter a valid email");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.emailController.text = value;
                          },
                        ),
                      
                      ),
                      SpacebetweenTextField(
                        spacing: 20,
                      ),


                      Container(
                        child: CustomTextField(
                          textEditingController: controller.passwordController,
                          color1: Color(0xFFE7E3E3),
                          obscureText: controller.isObscure3.value,
                          hints: "Password",
                          trailingIcon: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.convertWidth(context, 10)),
                              child:IconButton(
                                icon: Icon( controller.isObscure3.value
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                 
                                     controller.isObscure3.value =  !controller.isObscure3.value;
                                  
                                }),
                            ),
                          validator: (value) {
                            RegExp regex = new RegExp(r'^.{6,}$');
                            if (value.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (!regex.hasMatch(value)) {
                              return ("please enter valid password min. 6 character");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.passwordController.text = value;
                          },
                         
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
                                    child: ResetPasswordScreen(), type: PageTransitionType.fade));
                          },
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: " Forgot Password",
                                  style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: blueColor,
                                  )),
                            ]),
                          ),
                        ),
                      ),
                      SpacebetweenTextField(
                        spacing: 25,
                      ),
                      Container(
                        child: filledButton(
                          onTap: () async{


                               await _login(controller, context);
                          },
                          txt: "Sign In ",
                          fontsize: size.convert(context, 12),
                          color1: ButtonColor,
                          borderRadius: 15,
                        ),
                      ),
                      SpacebetweenTextField(
                        spacing: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don\'t have an account?",
                                style: style.PoppinsRegular(
                                  fontSize: size.convert(context, 12),
                                  color: Color(0xff434343),
                                )),
                            GestureDetector(
                              child: Text(" Sign Up",
                                  style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: Color(0xFFFF3A2A),
                                    fontWeight: FontWeight.bold,
                                  )),
                              onTap: () {
                                Get.offNamed('/register');
                              },
                            ),
                          ],
                        ),
                      ),
                      SpacebetweenTextField(
                        spacing: 30,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: size.convert(context, 2),
                                color: Color(0xFFECE6E6),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.convertWidth(context, 5)),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Or sign up with",
                                      style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 10),
                                        color: Color(0xff434343),
                                      )),
                                ]),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: size.convert(context, 2),
                                color: Color(0xFFECE6E6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SpacebetweenTextField(
                        spacing: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            filledButton(
                              leftWidget: Icon(
                                Icons.face_sharp,
                                color: Color(0xFFFFFFFF),
                              ),
                              txt: "Facebook",
                              fontsize: size.convert(context, 12),
                              w: 170,
                              color1: darkBlueColor,
                              borderRadius: 15,
                            ),
                           
                            filledButton(
                              leftWidget: Image.asset(
                                
                                'assets/images/google.png',
                                height: 18,
                              ),
                              txt: "Google",
                              fontsize: size.convert(context, 12),
                              w: 170,
                              txtcolor: Colors.black,
                              color1: Colors.white,
                              borderColor: greyColor,
                              borderwidth: 2,
                              borderRadius: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
             
          ),
        ),
      
    ),
  
  
        
        );
  }

  
  _login(AuthController controller, BuildContext context) async {
        if (controller.loginFormKey.currentState.validate()) {

        String _email = controller.emailController.text.trim();
        String _password = controller.passwordController.text.trim();

        UserLogin signInBody = UserLogin(
          email: _email,
          password: _password,
        );
        await controller.login(context, signInBody);
      }
  }
}
