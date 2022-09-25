// ignore_for_file: unused_field, unused_import

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:handycraft/UIScreen/drawer.dart';
import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/models/user_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/provider.dart';
import '../common_widgets/app_snacks.dart';
import '../models/user.dart';
import '../models/user_register.dart';


class AuthController extends GetxController with StateMixin<List<dynamic>> {
  RxBool isLoading = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  Dio dio = Dio(); 
  RxBool isObscure3 = true.obs;
  RxBool visible = false.obs;

  final ApiServiceProvider _provider = ApiServiceProvider();
  TextEditingController emailController, passwordController, phoneController, nameController;  

  RxString username = ''.obs;

  @override
  void onInit() async{
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    phoneController  = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();

  }


login(BuildContext context, UserLogin userDataBody) async {

    try {
      isLoading(true); 
      update();
      String endpointUrl = 'sign-in';
      print('user-data ${userDataBody}');
      Response response = await _provider.sendPost(endpointUrl, userDataBody.toJson());
  
      if ( response.statusCode == 200 ) {
         final prefs = await SharedPreferences.getInstance();
         var username = await prefs.setString('username', response.data['user']['name']);
         print('shared-username: $username');

        isLoading(false);
        AppSnacks.show(context, backgroundColor: Colors.green, leadingIcon: Icon(Icons.check), message: 'Login Success!');
         Future.delayed(Duration(seconds: 1), () {
          Get.to(HomeExplore());
          update();
          return response.data;
        });
      }
      
    } catch (e) {
      print(' Failed $e');
      isLoading(false);
     AppSnacks.show(context, leadingIcon: Icon(Icons.check), message: 'Login Failed!');

      update();
      return e.toString();
    }

}



register(BuildContext context, UserRegister userDataBody) async {

    try {
      isLoading(true); 
      update();
      String endpointUrl = 'sign-up';
      print('user-data ${userDataBody}');
      Response response = await _provider.sendPost(endpointUrl, userDataBody.toJson());
     
      print (response.data);
      if ( response.statusCode == 200 ) {
        isLoading(false);
        AppSnacks.show(context, backgroundColor: Colors.green, leadingIcon: Icon(Icons.check), message: 'Registration Success!');
         Future.delayed(Duration(seconds: 1), () {
          Get.offNamed('/login');
          update();
          return response.data;
        });
      }
      
    } catch (e) {
      print(' Failed $e');
      isLoading(false);
     AppSnacks.show(context, leadingIcon: Icon(Icons.check), message: 'Registration Failed!');

      update();
      return e.toString();
    }

}


}

