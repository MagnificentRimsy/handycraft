import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/controllers/auth_controller.dart';
import 'package:handycraft/models/user_register.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class SignUpScreen extends GetView<AuthController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.convert(context, 80)),
        child: CustomAppBar(
          color1: Colors.transparent,
          color2: Colors.transparent,
          hight: size.convert(context, 80),
          parentContext: context,
          clickOnDrawer: (){
          },
          leadingIcon: backIcon(),
        ),
      ),
        body: 
    Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.convertWidth(context, 25)
      ),
      child: SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height - size.convert(context, 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
                    key: controller.registerFormKey,
                    child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: size.convert(context, 20)
                            ),
                            child: RichText(
                              text: TextSpan(
                                text: "Create a new Account",
                                style: style.PoppinsSemiBold(
                                  color: Colors.black,
                                  fontSize: size.convert(context, 30),
                                )
                              ),
                            ),
                          ),
                          Container(
                            child: CustomTextField(
                              textEditingController: controller.nameController,
                              color1: Color(0xFFE2E2E2),
                              hints: "Full Name",
                              validator: (value) {
                            if (value.length == 0) {
                              return "Name cannot be empty";
                            }
                            else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.nameController.text = value;
                          },
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
                          SpacebetweenTextField(),
                          Container(
                            child: CustomTextField(
                             textEditingController: controller.phoneController,
                              color1: Color(0xFFE2E2E2),
                              hints: "Phone",
                              validator: (value) {
                            if (value.length == 0) {
                              return "Email cannot be empty";
                            }
                            if (!RegExp( "^(?:[+2]0)?[0-9]{10}")
                                .hasMatch(value)) {
                              return ("Please enter a valid email");
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) {
                            controller.phoneController.text = value;
                          },
                            ),
                          ),
                          SpacebetweenTextField(),
                          Container(
                            child:  CustomTextField(
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
                          SpacebetweenTextField(),
                          Container(
                            child: filledButton(
                              onTap: ()async{
                                     await _register(controller, context);
                                },
                              txt: "Sign Up",
                              fontsize: size.convert(context, 12),
                              color1: ButtonColor,
                              borderRadius: 15,
                            ),
                          ),
                          SpacebetweenTextField(),
                          Container(
                            child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?",
                            style: style.PoppinsRegular(
                              fontSize: size.convert(context, 12),
                              color: Color(0xff434343),
                            )),
                        GestureDetector(
                          child: Text(" Sign In",
                              style: style.PoppinsRegular(
                                fontSize: size.convert(context, 12),
                                color: blueColor,
                                fontWeight: FontWeight.bold,
                              )),
                          onTap: () {
                           Get.toNamed('/login');
                          },
                        ),
                      ],
                                ),
                          ),
                          SpacebetweenTextField(spacing: 30,),
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
                                    horizontal: size.convertWidth(context, 5)
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Or sign up with",
                                              style: style.PoppinsRegular(
                                                fontSize: size.convert(context, 10),
                                                color: Color(0xff434343),
                                              )
                                          ),
                                        ]
                                    ),
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
                        ],
                      ),
                  ),    
                
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.convert(context, 20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   filledButton(
                    leftWidget: Icon(
                      Icons.facebook_sharp,
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
    );
  }
 

 
 _register(AuthController controller, BuildContext context) async {
   if (controller.registerFormKey.currentState.validate()) {

    String _name = controller.nameController.text.trim();
    String _email = controller.emailController.text.trim();
    String _phone = controller.nameController.text.trim();
    String _password = controller.passwordController.text.trim();

    UserRegister signUpBody = UserRegister(
      name: _name,
      email: _email,
      phone: _phone,
      password: _password,
    );
    await controller.register(context, signUpBody);
  }
 }
}
