import 'package:handycraft/UIScreen/BookingViewEdit.dart';
import 'package:handycraft/UIScreen/viewService.dart';
import 'package:handycraft/common_widgets/BoxIcon.dart';
import 'package:handycraft/common_widgets/CustomBottomAppBar.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/custom_textfield.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

import 'drawer.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  final List<String> _categories = ["All", "One", "Two", "Three", "Four"];

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
          centerWigets: BoxIcon(
            ontap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      child: DashBoard(), type: PageTransitionType.fade));
            },
            bgColor: ButtonColor,
            CustomIcon: Image.asset('assets/icons/icon.png')
            
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomBar(
        select: 3,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.convert(context, 20),
                      horizontal: size.convertWidth(context, 0)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: CustomTextField(
                            color1: Color(0xffC6C6C6),
                            borderRadius: 15,
                            hints: "Search…",
                            hintColor: Color(0xff8B8B8B),
                            iconWidget: Container(
                                padding: EdgeInsets.only(
                                    left: size.convertWidth(context, 10)),
                                child: Icon(
                                  Icons.search,
                                  size: size.convert(context, 20),
                                  color: Color(0xff8B8B8B),
                                )),
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            left: size.convertWidth(context, 10)),
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Color(0xffC6C6C6),
                            style: BorderStyle.solid,
                            width: 0.80,
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
//                       Container(
//                         margin: EdgeInsets.only(
//                             left: size.convertWidth(context, 10)
//                         ),
//                         child: BoxIcon(
//                           ontap: (){
// //                          filter(context);
//                           },
//                           bgColor: ButtonColor,
//                           CustomIcon: Icon(Icons.zoom_out_map,color: Colors.white,),
//                         ),
//                       ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Upcoming Bookings (2)',
                  style: style.PoppinsSemiBold(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                child: bookingItem('PENDING', 'Haircut', Color(0xffD5DBE1),
                    false, Colors.black),
                onTap: (){
                  Navigator.push(context, PageTransition(child: BookingViewEdit(), type: PageTransitionType.fade));

                },
              ),
              bookingItem('CONFIRMED', 'Deluxe Manicure',
                  Color(0xff26BF44).withOpacity(0.2), false, Colors.black),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Finished Bookings (3)',
                  style: style.PoppinsSemiBold(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              bookingItem('CANCELLED', 'Haircut',
                  Color(0xffFF3A2A).withOpacity(0.2), true, Color(0xffFF3A2A)),
              bookingItem('CONFIRMED', 'Deluxe Manicure', Color(0xff5034a3),
                  true, Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  bookingItem(status, title, statusColor, bookAgain, statusTextColor) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffF9F9F9),
          border: Border.all(color: Color(0xff707070), width: 0.01)),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(top: 6, left: 20, right: 20, bottom: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25), color: statusColor),
              child: Text(
                '$status',
                style:
                    style.PoppinsRegular(fontSize: 13, color: statusTextColor),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$title',
                            style: style.PoppinsSemiBold(
                                fontSize: 15, color: Colors.black),
                          ),
                          Text(
                            'N 1,200',
                            style: style.PoppinsSemiBold(
                                fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Fantasia Palace',
                        style: style.PoppinsRegular(
                            fontSize: 15, color: Colors.black),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'No. 4, Yaba left, Lagos Street …',
                        style: style.PoppinsRegular(
                            fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.5,
                height: 110,
                color: Colors.grey,
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        'FEB',
                        style: style.PoppinsRegular(
                            fontSize: 14, color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '28',
                        style: style.PoppinsRegular(
                            fontSize: 27, color: Colors.black),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '11:20',
                        style: style.PoppinsRegular(
                            fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bookAgain
              ? Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: ViewService(),
                                  type: PageTransitionType.fade));
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff434343),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )),
                        child: Text(
                          'Book Again',
                          style: style.PoppinsRegular(
                              fontSize: size.convert(context, 16)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                )
              : SizedBox(
                  height: 30,
                )
        ],
      ),
    );
  }
}
