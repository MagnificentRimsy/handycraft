
import 'dart:convert';
import 'package:get/get.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/models/service_category_provider.dart';

class ServiceProvider extends GetConnect {
  // Fetch Data String url
    final String dataurl = "https://handycraft-moble-api.abskaftan.com/api/all-services-providers";
    Future<List<ServiceCategoryProvider>> getServices() async {
   //  
   Response res = await get(dataurl);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.bodyString);

      List<ServiceCategoryProvider> serviceproviders = body
        .map(
          (dynamic item) => ServiceCategoryProvider.fromJson(item),
         
        )
        .toList();

      return serviceproviders;
    } else {
      throw "Unable to retrieve Service Providers.";
    }
  }



  Future<List<ServiceCategoryProvider>> getServiceCategoryProviders(String url) async {
   
    try {
      Response response = await get(Constants.BASEURL+url);
      if (response.status.hasError) {
        return Future.error(response.statusText.toString());
      } else {
        
          List<dynamic> body = jsonDecode(response.bodyString);

            List<ServiceCategoryProvider> serviceproviders = body
            .map(
              (dynamic item) => ServiceCategoryProvider.fromJson(item),           
            )
            .toList();
          return serviceproviders;

      }
    }
    catch(exception)
    {

      return Future.error(exception.toString());
    }
  }

}
