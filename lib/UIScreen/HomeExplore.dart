import 'package:get/get.dart';
import 'package:handycraft/UIScreen/services.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/models/service_category_provider.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common_widgets/CustomBottomAppBar.dart';
import '../common_widgets/animated_column.dart';
import '../common_widgets/service_provider_option_card.dart';
import '../contacts/constants.dart';
import '../controllers/service_provider_controller.dart';

class HomeExplore extends StatefulWidget {
  @override
  _HomeExploreState createState() => _HomeExploreState();
}

class _HomeExploreState extends State<HomeExplore> {
  List item = ["All", "Hair Saloon", "Barbar", "Nail Saloon", "Show up"];
  List images = ["i1", "i3", "i2", "i4"];

  String username = '';
  int currentSelected = 0;

   @override
  void initState() {
    super.initState();
    getUsername ();
  }

  getUsername ()async{
    final prefs = await SharedPreferences.getInstance();
    setState(() { 
       username = prefs.getString('username');
    });
  }


  

  List<Map<String, dynamic>> dataProviderOptions = [
    {'imgUrl': 'assets/images/construction.jpeg', 'label': 'Contruction'},
    {'imgUrl': 'assets/images/food.jpeg', 'label': 'Food Service'},
    {'imgUrl': 'assets/images/health.jpeg', 'label': 'Health'},
    {'imgUrl': 'assets/images/mechanic.png', 'label': 'Mechanic'},
    {'imgUrl': 'assets/images/salon.jpeg', 'label': 'Saloon'},
    {'imgUrl': 'assets/images/tech.png', 'label': 'Tech'},
  ];


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
          leadingIcon: Icon(
            Icons.segment,
            color: Colors.black,
            size: size.convert(context, 25),
          ),
          centerWigets: Image.asset("assets/images/icon.png"),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: AppAnimatedColumn(
            direction: Axis.horizontal,
            duration: const Duration(milliseconds: 1000),
            children: [
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.convert(context, 20),
                      horizontal: size.convertWidth(context, 25)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: CustomTextField(
                            color1: Color(0xFFF3F1F1),
                            hints: "Search for services…",
                            hintColor: Colors.black,
                            iconWidget: Container(
                                padding: EdgeInsets.only(
                                    left: size.convertWidth(context, 10)),
                                child: Icon(
                                  Icons.search,
                                  size: size.convert(context, 20),
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: size.convertWidth(context, 10)),
                        child: BoxIcon(
                          ontap: () {
                            filter(context);
                          },
                          bgColor: Colors.grey,
                          CustomIcon: Icon(
                            Icons.settings_input_composite_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                          // Image.asset("assets/images/search_.png")
                        ),
                      ),
                    ],
                  )),
              Card(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: ButtonColor),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                        Text('${username}',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Request our services at the comfort of your zone.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Top Service Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            GetBuilder<ServiceProviderController>(
                  init: ServiceProviderController(),
                  builder: (controller) {
                  return Column(
                    children: [
                      
                      controller.obx(
                      ( data) {

                        List<ServiceCategoryProvider> services = data;
                        return SizedBox(
                        width: double.infinity,
                        height: 300.h,
                        child: GridView.builder(
                         itemCount: services.length,
                         itemBuilder: (context, index) {
                           var path = services[index].image;
                            var imageurl = path.replaceAll('\\', '/').toString();
                            print('image url ${imageurl}');
                            
                           return ServiceProviderOptionCard(
                               onPressed: () async{
                                 setState(() {
                                   currentSelected = index;
                                 });
                                 Get.toNamed('/serviceproviders', arguments: services[index]);
                                    // Get.to(ServiceProviders(), arguments: services[index]);

                               },
                               isSelected: currentSelected == index ? true : false,
                               label: services[index].name,
                               child:Image.network(
                                  Constants.IMAGEBASEURL+imageurl,
                                  height: 60.h,
                                  width: 60.w,
                                  loadingBuilder: (BuildContext context, Widget child,
                                  ImageChunkEvent loadingProgress) {
                                  if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress.expectedTotalBytes != null
                                            ? loadingProgress.cumulativeBytesLoaded /
                                                loadingProgress.expectedTotalBytes
                                            : null,
                                      ),
                                    );
                                  },
                                
                              )
                                
                                
                            );
                         },
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                             crossAxisCount: 3, childAspectRatio: .8),
                        ),
                      );
                       }
                      ),
                    ],
                  );
                }
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        select: 1,
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
                            child: HomeExplore(),
                            type: PageTransitionType.fade));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
