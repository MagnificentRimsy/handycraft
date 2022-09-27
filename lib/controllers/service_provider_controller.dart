
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import '../api/services_provider.dart';



class ServiceProviderController extends GetxController with StateMixin<List<dynamic>>{
  var isDataProcessing = false.obs;

  void onInit() {
    super.onInit();
    _getServiceCategoryProviders();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

   _getServiceCategoryProviders () async {
          ServiceProvider().getServiceCategoryProviders('all-services-providers' ).then((value) {
            print('service provider ${value}');
            change(value, status: RxStatus.success());
          },onError: (error){
            change(null,status: RxStatus.error(error.toString()));
        });
    }
  }

