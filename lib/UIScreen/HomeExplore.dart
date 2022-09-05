import 'dart:ui';

import 'package:handycraft/UIScreen/BookingAlert.dart';
import 'package:handycraft/UIScreen/BookingViewEdit.dart';
import 'package:handycraft/UIScreen/DashBoard.dart';
import 'package:handycraft/UIScreen/searchResult.dart';
import 'package:handycraft/UIScreen/viewService.dart';
import 'package:handycraft/common_widgets/AppBarTitleStyle.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/CustomBottomAppBar.dart';
import 'package:handycraft/common_widgets/ProductWigets.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomeExplore extends StatefulWidget {
  @override
  _HomeExploreState createState() => _HomeExploreState();
}

class _HomeExploreState extends State<HomeExplore> {
  List item = ["All", "Hair Saloon","Barbar","Nail Saloon","Show up"];
  List images = ["i1", "i3", "i2", "i4"];
  int selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(size.convert(context, 80)),
          child: CustomAppBar(
            color1: Colors.transparent,
            color2: Colors.transparent,
            hight: size.convert(context, 80),
            parentContext: context,
            leadingIcon: Icon(Icons.segment,color: Colors.black,size: size.convert(context, 25),),
            centerWigets: Image.asset("assets/images/icon.png"),
            // BoxIcon(
            //   ontap: (){
            //     Navigator.push(context, PageTransition(child: DashBoard(), type: PageTransitionType.fade));
            //   },
            //   bgColor: ButtonColor,
            //   CustomIcon: Icon(Icons.zoom_out_map,color: Colors.white,),
            // ),
          ),
        ),
        body: _body(),
      bottomNavigationBar: CustomBottomBar(select: 1,),
    );
  }
  _body(){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: size.convert(context, 20),
                  horizontal: size.convertWidth(context, 25)
              ),
              child:Row(
                children: [
                  Expanded(
                    child: Container(
                     
                      child: CustomTextField(
                        color1: Color(0xFFF3F1F1),
                        
                        hints: "Search for services…",
                        hintColor: Colors.black,
                        iconWidget: Container(
                            padding: EdgeInsets.only(
                                left: size.convertWidth(context, 10)
                            ),
                            child: Icon(Icons.search,size: size.convert(context, 20),color: Colors.black,)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: size.convertWidth(context, 10)
                    ),
                    child: BoxIcon(
                      ontap: (){
                        filter(context);
                      },
                      bgColor: ButtonColor,
                      CustomIcon: Icon(Icons.settings_input_composite_sharp ,color: Colors.white, size: 15,),
                      // Image.asset("assets/images/search_.png")
                    ),
                  ),
                ],
              )
            ),
            Container(
              height: size.convert(context, 100),
              child: ListView.separated(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        showDialog(
                            context: context,
                            builder: (context) => BookingAlert()
                        );
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left:  index == 0 ? size.convertWidth(context, 25) : size.convertWidth(context, 0)
                        ),
                        width: size.convertWidth(context, 80),
                        height: size.convert(context, 98),
                        decoration: BoxDecoration(
                          color: index == selectedIndex ?blueColor : Colors.white,
                          borderRadius: BorderRadius.circular(size.convert(context, 15)),
                          border: Border.all(
                            color: selectedIndex == index ? blueColor : Color(0xFFF3F1F1),
                            width: 2
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Image.asset("assets/images/i3.png", width: 30,)
                              //  Icon(Icons.build),
                            ),
                            SizedBox(
                              height: size.convert(context, 10),
                            ),
                            Container(
                              child: RichText(
                                text: TextSpan(
                                  text: item[index],
                                  style: style.PoppinsRegular(
                                    color: selectedIndex == index ? Colors.white : Color(0xff8B8B8B),
                                    fontSize: size.convert(context, 11)
                                  )
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return Container(width: size.convertWidth(context, 10),);
                  },
                  itemCount: item.length??0),
              // child: Wrap(
              //   children: ["",""].map((item) => Container(
              //
              //       child: Text(item))).toList().cast<Widget>(),
              // ),
            ),
            SpacebetweenTextField(spacing: 15,),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: size.convertWidth(context, 25)
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    // ViewService
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: ViewService(), type: PageTransitionType.fade));
                      },
                      child: ProductWigets(
                        imageUrl: "assets/images/mask.png",
                        assetImage: true,
                        Address: InkWell(
                          onTap: (){
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(Icons.location_on,size: size.convert(context, 15),),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "Yaba left, Lagos Street",
                                              style: style.PoppinsRegular(
                                                  fontSize: size.convert(context, 12),
                                                  color: greyColor
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ),
                    );
                  },
                  separatorBuilder: (context,index){
                    return Container(height: size.convertWidth(context, 10),);
                  },
                  itemCount: item.length??0),
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
  
  filter(context)  {

    showModalBottomSheet(
      isDismissible: false,
      backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc){
          return MyFilter();
        }
    );
  }


}

class MyFilter extends StatefulWidget {
  @override
  _MyFilterState createState() => _MyFilterState();
}

class _MyFilterState extends State<MyFilter> {
  SfRangeValues  cast = SfRangeValues(1.0, 10000.0);
  double distance = 1.0;
  int selectStar = 1;
  int selectedGender = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.convertWidth(context, 25),
            vertical: size.convert(context, 20)
        ),
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
                      child: Text("Filter your search",style: style.PoppinsSemiBold(
                        color: Colors.black,
                        fontSize: size.convert(context, 20),
                      ),
                      ),
                    ),
                    BoxIcon(
                      CustomIcon: Image.asset("assets/icons/cross.png"),
                      ontap: (){
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              SpacebetweenTextField(spacing: 20,),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text("Services",
                        style: style.PoppinsSemiBold(
                          fontSize: size.convert(context, 14),
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SpacebetweenTextField(spacing: 5,),
                    CustomTextField(
                      color1: Colors.black.withOpacity(0.8),
                      borderwidth: 0.5,
                      borderRadius: 10,
                      hints: "Nails",
                    ),
                  ],
                ),
              ),
              SpacebetweenTextField(spacing: 20,),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.convertWidth(context, 12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Cast",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
                    ),
                    Container(
                      child: Text("N ${cast.start.toStringAsFixed(1)} - N ${cast.end.toStringAsFixed(1)}",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
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
                  onChanged: (values){
                    setState(() {
                      cast = values;
                    });
                  },
              ),

              SpacebetweenTextField(spacing: 20,),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.convertWidth(context, 12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Distance",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
                    ),
                    Container(
                      child: Text("${distance.toStringAsFixed(1)} m",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
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
                onChanged: (values){
                  setState(() {
                    print("${values}");
                    distance = values;
                  });
                },
              ),
              SpacebetweenTextField(spacing: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Rating",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
              ),
              SpacebetweenTextField(spacing: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  children: [1,2,3,4,5].map((item) => Container(
                      child: filledButton(
                        onTap: (){
                          setState(() {
                            selectStar = item;
                          });
                        },
                        w: size.convertWidth(context, 65),
                        txt: item.toString(),
                        color1: selectStar == item ? blueColor : Colors.white,
                        borderColor: greyColor,
                        txtcolor: selectStar == item ? Colors.white : Colors.black,
                        rigtWidget: Container(
                          padding: EdgeInsets.only(bottom: 5),
                            child: Icon(Icons.star,
                               color : selectStar == item ? Colors.white : greyColor,
                              size: size.convert(context, 15),
                            )),
                      )
                  )).toList().cast<Widget>(),
                ),
              ),

              SpacebetweenTextField(spacing: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Gender",style: style.PoppinsSemiBold(fontSize: size.convert(context, 14)),),
              ),
              SpacebetweenTextField(spacing: 10,),
              Container(
                alignment: Alignment.centerLeft,
                child: Wrap(
                  spacing: 8,
                  children: [
                    {"index":1,"text":"Male"},
                    {"index":2,"text":"Female"},
                    ].map((item) => Container(
                      child: filledButton(
                        onTap: (){
                          setState(() {
                            selectedGender = item["index"];
                          });
                        },
                        w: size.convertWidth(context, 104),
                        txt: item["text"].toString(),
                        color1: selectedGender == item["index"] ? blueColor : Colors.white,
                        borderColor: greyColor,
                        txtcolor: selectedGender == item["index"] ? Colors.white : Colors.black,

                      )
                  )).toList().cast<Widget>(),
                ),
              ),
              
              SpacebetweenTextField(spacing: 40,),
              Container(
                child: filledButton(
                  txt: "Show results",
                  color1: blueColor,
                  onTap: (){
                    Navigator.push(context, PageTransition(child: HomeExplore(), type:PageTransitionType.fade));
                  },
                ),
              )


            ],
          ),
        )
    );
  }
}
