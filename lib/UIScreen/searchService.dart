
import 'package:handycraft/models/BookingInfo.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/CustomBottomAppBar.dart';
import 'package:handycraft/common_widgets/ProductWigets.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
class searchService extends StatefulWidget {
  @override
  _searchServiceState createState() => _searchServiceState();
}

class _searchServiceState extends State<searchService> {
  List menu = ["All","Hair Salon","Barber","Nail Salon","Massage","Dentist","Dentist"];
  int selectedIndex = 0;
  List item = [
    {
     "title" : "All",
      "bookinList" :[
        BookingInfo(title: "Nail Polish Custmization",price: "N 2,500",time: "30 mins"),
      ]
    },
    {
      "title" : "Hair Saloon",
      "bookinList" :[
        BookingInfo(title: "Acrylic Product (Natural Nails)",price: "N 4,850",time: "30 mins"),
        BookingInfo(title: "Full set on Natural Nails",price: "N 6,000",time: "30 mins"),
      ]
    },
    {
      "title" : "Barbar",
      "bookinList" :[
        BookingInfo(title: "Nail Polish Custmization",price: "N 2,500",time: "30 mins"),
      ]
    },
    {
      "title" : "Nail Saloon",
      "bookinList" :[
        BookingInfo(title: "Nail Polish Custmization",price: "N 2,500",time: "30 mins"),
      ]
    },

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.convert(context, 125)),
        child: appBar(),
      ),
      body: _body(),
      bottomNavigationBar: CustomBottomBar(select: 3,),
    );
  }
  appBar(){
    return Container(
      padding: EdgeInsets.only(
          top: size.convert(context, 30),
          right: size.convertWidth(context, 25),
          left: size.convertWidth(context, 25),
          bottom: size.convert(context, 5)
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  width: 1,
                  color: greyColor
              )
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: size.convert(context, 3)),
                margin: EdgeInsets.only(
                    right: size.convertWidth(context, 10)
                ),
                child: BoxIcon(
                  ontap: (){

                  },
                  bgColor: Colors.white,
                  CustomIcon: Image.asset("assets/icons/cross.png"),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: CustomTextField(
                        color1: greyColor,
                        borderRadius: 15,
                        hints: "Search for services…",
                        hintColor: Colors.black,
                        trailingIcon: Container(
                            padding: EdgeInsets.only(
                                right: size.convertWidth(context, 10)
                            ),
                            child: Icon(Icons.search,size: size.convert(context, 20),color: Colors.black,)),
                      ),
                    ),
                    SpacebetweenTextField(spacing: 7,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:EdgeInsets.symmetric(
                                horizontal: size.convertWidth(context, 10),
                                vertical: size.convert(context, 2)
                            ),
                            width: size.convertWidth(context, 140),
                            decoration: BoxDecoration(
                                color: textFieldBgColor,
                                borderRadius: BorderRadius.circular(size.convert(context, 5)),
                                border: Border.all(
                                  color: greyColor,
                                  width: size.convert(context, 1),
                                )
                            ),
                            child: Text("Day",
                              style: style.PoppinsRegular(
                                fontSize: size.convert(context, 12),
                                color: greyColor,
                              ),),
                          ),
                          Container(
                            padding:EdgeInsets.symmetric(
                                horizontal: size.convertWidth(context, 10),
                                vertical: size.convert(context, 2)
                            ),
                            width: size.convertWidth(context, 140),
                            decoration: BoxDecoration(
                                color: textFieldBgColor,
                                borderRadius: BorderRadius.circular(size.convert(context, 5)),
                                border: Border.all(
                                  color: greyColor,
                                  width: size.convert(context, 1),
                                )
                            ),
                            child: Text("Time",
                              style: style.PoppinsRegular(
                                fontSize: size.convert(context, 12),
                                color: greyColor,
                              ),),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          // SpacebetweenTextField(spacing: 15,),
          Container(
            // color: Colors.yellow,yellow
            height: size.convert(context, 17),
            child: ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Text("${menu[index]}",style: style.PoppinsRegular(
                          fontSize: size.convert(context, 12),
                          color: selectedIndex == index ? blueColor : greyColor
                      ),),
                      ),
                      selectedIndex == index ? Container(
                        width: size.convert(context, 5),
                        height: size.convert(context, 5),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: blueColor
                        ),
                      ) : Container()
                    ],
                  ),
                );
              },
              itemCount: menu.length,
              separatorBuilder: (context,index){
                return SizedBox(width: size.convertWidth(context, 10),);
              },
            ),
          )
        ],
      ),
    );
  }

  _body(){
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: size.convert(context, 10),
                left: size.convertWidth(context, 30),
                right: size.convertWidth(context, 30),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Results (790)",style: style.PoppinsSemiBold(
                        fontSize: size.convert(context, 20),
                        color: Colors.black
                    ),),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              bottom: 8
                          ),
                          child: Image.asset("assets/icons/blackMap.png",width: size.convert(context, 15),
                            height: size.convert(context, 15),),
                        ),
                        Text("Map",style: style.PoppinsRegular(
                            fontSize: size.convert(context, 16),
                            color: Colors.black
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    child: filledButton(
                      leftWidget: Container(child: Icon(Icons.filter_list,size: size.convert(context, 16),color: greyColor,),
                        margin: EdgeInsets.only(right: 5),),
                      txt: "Filters",
                      txtcolor: greyColor,
                      color1: textFieldBgColor,
                      fontsize: size.convert(context, 10),
                      w: size.convertWidth(context, 100),
                      h: size.convert(context, 25),
                      borderColor: greyColor,
                    ),
                  )
                ],
              ),
            ),
            SpacebetweenTextField(spacing: 5,),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.convertWidth(context, 25)
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        // Navigator.push(context, PageTransition(child: BookingViewEdit(), type: PageTransitionType.fade));
                      },
                      child: ProductWigets(
                        imageUrl: "assets/icons/image.jpg",
                        assetImage: true,
                        bookingList: item[index]["bookinList"],

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
}

