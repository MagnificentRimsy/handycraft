import 'package:get/get.dart';

import '../controllers/auth_controller.dart';
import '../controllers/service_provider_controller.dart';


class DataBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => ServiceProviderController());
  }

}