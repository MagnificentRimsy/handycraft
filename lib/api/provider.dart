import 'package:dio/dio.dart';
import '../contacts/constants.dart';



class ApiServiceProvider  {

  Dio dio = Dio(); 
  Future<Response> sendPost(String url, Map data) {
    return dio.post( Constants.BASEURL + url, data: data);
  }


}
