import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/models/service_category_provider.dart';

import '../api/services_provider.dart';
import '../common_widgets/service_provider_option_card.dart';

class PostsPage extends StatefulWidget {
  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final ServiceProvider httpService = ServiceProvider();
  int currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getServices(),
        builder: (BuildContext context, AsyncSnapshot<List<ServiceCategoryProvider>> snapshot) {
          if (snapshot.hasData) {
            List<ServiceCategoryProvider> services = snapshot.data;
            return 
            
                SizedBox(
                        width: double.infinity,
                        height: 300.h,
                        child: GridView.builder(
                          itemCount: services.length,
                          itemBuilder: (context, index) {
                            var path = services[index].image;
                            var imageurl = path.replaceAll('\\', '/').toString();
                            print('image url ${imageurl}');
                            
                            return ServiceProviderOptionCard(
                                onPressed: () {
                                  setState(() {
                                    currentSelected = index;
                                  });
                                  Get.toNamed('/serviceproviders');
                                },
                                isSelected: currentSelected == index ? true : false,
                                label: services[index].name,
                                child: Image.network(Constants.IMAGEBASEURL+imageurl,
                                  height: 60.h,
                                  width: 60.w,)
                                
                                );
                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, childAspectRatio: .8),
                        ),
                      );
            
            
            // ListView(
            //   children: services
            //       .map(
            //         (ServiceCategoryProvider service) => ListTile(
            //           title: Text(service.name),
            //           subtitle: Text("${service.id}"),
            //         ),
            //       )
            //       .toList(),
            // );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}