import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:handycraft/UIScreen/BookingViewEdit.dart';
import 'package:handycraft/UIScreen/viewService.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/CustomBottomAppBar.dart';
import 'package:handycraft/common_widgets/ProductWigets.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/models/service_category_provider.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../common_widgets/backIcon.dart';
import '../contacts/constants.dart';

class ServiceProviders extends StatefulWidget {
  @override
  _ServiceProvidersState createState() => _ServiceProvidersState();
}

class _ServiceProvidersState extends State<ServiceProviders> {
  List images = ["i1", "i3", "i2", "i4"];
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController _controller;

  final List<String> _categories = ["All", "One", "Two", "Three", "Four"];
  ServiceCategoryProvider data = Get.arguments;

  
  
  List item =  ["All", "Hair Saloon", "Barbar", "Nail Saloon", "Show up"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  //  print('Collected Data ${data.providers.map((e) => e.name)}');
    // print('hellooooo ${data.providers.map((item) => new Text(item.image)).toList()}');
    (data.providers).forEach((element) {
        print('PROVIDER NAMES: ${element.name}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(
        leading:  Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: backIcon()),
        toolbarHeight: 100, backgroundColor: Colors.transparent, elevation: 0, centerTitle: true, title: Image.asset("assets/images/icon.png", height: 50.h,),),
      
   
      body: _body(),
      
    );
  }

  _body() {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [


            Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.convert(context, 20),
                    horizontal: size.convertWidth(context, 25)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                          child: Text(
                        "Service Providers",
                        style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 18),
                            color: Colors.black),
                      )),
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 0.40,
                            ),
                      ),
                      child: DropdownButton(
                        underline: SizedBox(),
                        items: _categories
                            .map((value) => DropdownMenuItem(
                                  child: Text(value),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (String value) {},
                        isExpanded: false,
                        value: _categories.first,
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.convertWidth(context, 25)),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    var path = data.providers[index].image;
                    var imageurl = path.replaceAll('\\', '/').toString();
                    print('image url ${imageurl}');

                    // ViewService
                    return InkWell(
                      onTap: () {
                       Get.toNamed('/servicedetails', arguments: data.providers[index]);

                        // Navigator.push(
                        //     context,
                        //     PageTransition(
                        //         child: ViewService(),
                        //         type: PageTransitionType.fade));
                      },
                      child: ProductWigets(
                        imageUrl: Constants.IMAGEBASEURL+imageurl,
                        assetImage: true,
                        status:data.providers[index].status ,
                        name: data.providers[index].name,
                        Address: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: BookingViewEdit(),
                                    type: PageTransitionType.fade));
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: size.convert(context, 15),
                                ),
                                Container(
                                  child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "${data.providers[index].address}",
                                          style: style.PoppinsRegular(
                                              fontSize:
                                                  size.convert(context, 12),
                                              color: greyColor)),
                                    ]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      height: size.convertWidth(context, 10),
                    );
                  },
                  itemCount: data.providers.length ?? 0),
              // child: Wrap(
              //   children: ["",""].map((item) => Container(
              //
              //       child: Text(item))).toList().cast<Widget>(),
              // ),
            ),
          ],
        ),
      ),
    );
  }

  filter(context) {
    showModalBottomSheet(
        isDismissible: false,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return MyFilter();
        });
  }
}




class MyFilter extends StatefulWidget {
  @override
  _MyFilterState createState() => _MyFilterState();
}

class _MyFilterState extends State<MyFilter> {
  SfRangeValues cast = SfRangeValues(1.0, 10000.0);
  double distance = 1.0;
  int selectStar = 1;
  int selectedGender = 1;

  var data = Get.arguments;


  @override
  void initState() {
    super.initState();
    print('Provider Data ${data}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.convertWidth(context, 25),
            vertical: size.convert(context, 20)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(size.convert(context, 30)),
            topRight: Radius.circular(size.convert(context, 30)),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Filter your search",
                        style: style.PoppinsSemiBold(
                          color: Colors.black,
                          fontSize: size.convert(context, 20),
                        ),
                      ),
                    ),
                    BoxIcon(
                      CustomIcon: Image.asset("assets/icons/cross.png"),
                      ontap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              SpacebetweenTextField(
                spacing: 20,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Services",
                        style: style.PoppinsSemiBold(
                          fontSize: size.convert(context, 14),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SpacebetweenTextField(
                      spacing: 5,
                    ),
                    CustomTextField(
                      color1: Colors.black.withOpacity(0.8),
                      borderwidth: 0.5,
                      borderRadius: 10,
                      hints: "Nails",
                    ),
                  ],
                ),
              ),
              SpacebetweenTextField(
                spacing: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.convertWidth(context, 12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Cast",
                        style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 14)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "N ${cast.start.toStringAsFixed(1)} - N ${cast.end.toStringAsFixed(1)}",
                        style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 14)),
                      ),
                    ),
                  ],
                ),
              ),
              SfRangeSlider(
                activeColor: Color(0xff434343),
                inactiveColor: Color(0xffC6C6C6),
                min: 1.0,
                max: 10000.0,
                interval: 20.0,
                // showTicks: true,
                // showLabels: true,
                enableTooltip: true,
                // minorTicksPerInterval: 1,
                values: cast,
                onChanged: (values) {
                  setState(() {
                    cast = values;
                  });
                },
              ),
              SpacebetweenTextField(
                spacing: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.convertWidth(context, 12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Distance",
                        style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 14)),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${distance.toStringAsFixed(1)} m",
                        style: style.PoppinsSemiBold(
                            fontSize: size.convert(context, 14)),
                      ),
                    ),
                  ],
                ),
              ),
              SfSlider(
                activeColor: Color(0xff434343),
                inactiveColor: Color(0xffC6C6C6),
                min: 1.0,
                max: 10000.0,
                value: distance,
                enableTooltip: true,
                onChanged: (values) {
                  setState(() {
                    print("${values}");
                    distance = values;
                  });
                },
              ),
              SpacebetweenTextField(
                spacing: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Rating",
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 14)),
                ),
              ),
              SpacebetweenTextField(
                spacing: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  children: [1, 2, 3, 4, 5]
                      .map((item) => Container(
                              child: filledButton(
                            onTap: () {
                              setState(() {
                                selectStar = item;
                              });
                            },
                            w: size.convertWidth(context, 65),
                            txt: item.toString(),
                            color1:
                                selectStar == item ? blueColor : Colors.white,
                            borderColor: greyColor,
                            txtcolor: selectStar == item
                                ? Colors.white
                                : Colors.black,
                            rigtWidget: Container(
                                padding: EdgeInsets.only(bottom: 5),
                                child: Icon(
                                  Icons.star,
                                  color: selectStar == item
                                      ? Colors.white
                                      : greyColor,
                                  size: size.convert(context, 15),
                                )),
                          )))
                      .toList()
                      .cast<Widget>(),
                ),
              ),
              SpacebetweenTextField(
                spacing: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gender",
                  style: style.PoppinsSemiBold(
                      fontSize: size.convert(context, 14)),
                ),
              ),
              SpacebetweenTextField(
                spacing: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8,
                  children: [
                    {"index": 1, "text": "Male"},
                    {"index": 2, "text": "Female"},
                  ]
                      .map((item) => Container(
                              child: filledButton(
                            onTap: () {
                              setState(() {
                                selectedGender = item["index"];
                              });
                            },
                            w: size.convertWidth(context, 104),
                            txt: item["text"].toString(),
                            color1: selectedGender == item["index"]
                                ? blueColor
                                : Colors.white,
                            borderColor: greyColor,
                            txtcolor: selectedGender == item["index"]
                                ? Colors.white
                                : Colors.black,
                          )))
                      .toList()
                      .cast<Widget>(),
                ),
              ),
              SpacebetweenTextField(
                spacing: 40,
              ),
              Container(
                child: filledButton(
                  txt: "Show results",
                  color1: blueColor,
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: ServiceProviders(), type: PageTransitionType.fade));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
