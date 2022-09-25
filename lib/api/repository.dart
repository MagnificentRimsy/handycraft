


import 'package:get/get_connect/http/src/response/response.dart';
import 'package:handycraft/api/provider.dart';
import 'package:handycraft/models/service_category_provider.dart';

class Repository {
  final ApiServiceProvider apiProvider;

  Repository(this.apiProvider);

  // loginUser
  Future<dynamic> login(String url, dynamic userData) => apiProvider.sendPost(url, userData);


}