import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingViewEdit extends StatefulWidget {
  @override
  _BookingViewEditState createState() => _BookingViewEditState();
}

class _BookingViewEditState extends State<BookingViewEdit> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

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
            leadingIcon: backIcon(),
            trailingIcon: Container(
              child: Icon(Icons.calendar_today_outlined),
            ),
          ),
        ),
        body: _body());
  }

  _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
      child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - size.convert(context, 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
        children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: size.convert(context, 20)),
                      decoration: BoxDecoration(
                        color: Color(0xffD5DBE1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: size.convert(context, 5),
                        horizontal: size.convertWidth(context, 15),
                      ),
                      child: RichText(
                        text: TextSpan(
                            text: "Pending".toUpperCase(),
                            style: style.PoppinsRegular(
                                color: Color(0xff434343),
                                fontSize: size.convert(context, 10))),
                      ),
                    ),
                  ),
                  SpacebetweenTextField(spacing: 4,),
                  Center(
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                            text: "09:00 . Sat, Mar6",
                            style: style.PoppinsSemiBold(
                                fontSize: size.convert(context, 22))),
                      ),
                    ),
                  ),
                  SpacebetweenTextField(spacing: 4,),
                  Center(
                    child: Container(
                      child: RichText(
                        text: TextSpan(
                            text: "Barbers 9710",
                            style: style.PoppinsSemiBold(
                                fontSize: size.convert(context, 16))),
                      ),
                    ),
                  ),
                  SpacebetweenTextField(spacing: 10,),
                  _locationWidget(),
                  SpacebetweenTextField(spacing: 20,),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text("Haircut",
                                  style: style.PoppinsSemiBold(
                                    fontSize: size.convert(context, 14)
                                  ),
                                ),
                              ),
                              Container(
                                child: Text("N 1,200",
                                  style: style.PoppinsSemiBold(
                                      fontSize: size.convert(context, 14),
                                    color: blueColor
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SpacebetweenTextField(spacing: 10,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  circularImage(
                                    w: size.convert(context, 20),
                                    h: size.convert(context, 20),
                                  ),
                                  SizedBox(width: size.convertWidth(context, 5),),
                                  Container(
                                    child: Text("Funmi",
                                      style: style.PoppinsRegular(
                                          fontSize: size.convert(context, 14),
                                        color: greyColor
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Text("09:00 - 09:45",
                                  style: style.PoppinsRegular(
                                      fontSize: size.convert(context, 14),
                                      color: greyColor
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 10,
                    color: greyColor,

                  ),
                  SpacebetweenTextField(spacing: 30,),
                   Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Text("Call Venue",
                              style: style.PoppinsSemiBold(
                                  fontSize: size.convert(context, 14)
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                child: Image.asset("assets/icons/tel.png"),
                              ),
                              SizedBox(width: size.convertWidth(context, 10),),
                              Container(
                                child: Text("0802 023 0834",
                                  style: style.PoppinsSemiBold(
                                      fontSize: size.convert(context, 14),
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),



        ],
      ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: size.convert(context, 20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      filledButton(
                        txt: "Cancel",
                        fontsize: size.convert(context, 12),
                        w: size.convertWidth(context, 160),
                        txtcolor: Colors.black,
                        color1: Colors.white,
                        borderColor: greyColor,
                        borderwidth: 2,
                        borderRadius: 15,
                      ),
                      filledButton(
                        txt: "Change",
                        onTap: (){
                          Navigator.pop(context);
                        },
                        fontsize: size.convert(context, 12),
                        w: size.convertWidth(context, 160),
                        color1: Colors.black,
                        borderRadius: 15,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
  _locationWidget(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: Offset(0,0.3),
            blurRadius: 1,
            spreadRadius: 1
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            // color: Colors.grey.withOpacity(0.3),
            height: size.convert(context, 123),
            // width: size.convertWidth(context, 240),
            child: Image.asset("assets/icons/mapImage.png"),
          ),
          SpacebetweenTextField(spacing: 10,),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.convertWidth(context, 10),
              vertical: size.convert(context, 5)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Image.asset("assets/icons/blackMap.png"),
                      ),
                      SizedBox(width: size.convertWidth(context, 8),),
                      Container(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text("Barbers 9710",
                                style: style.PoppinsSemiBold(
                                  fontSize: size.convert(context, 14)
                                ),
                              ),
                            ),

                            Container(
                              child: Text("Barbers 9710",
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                  color: greyColor
                                ),
                              ),
                            ),

                            Container(
                              child: Text("Ojota, Lagos",
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: greyColor
                                ),
                              ),
                            ),
                            Container(
                              child: Text("3.2 Km",
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: greyColor
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: filledButton(
                    w: size.convertWidth(context, 150),
                    txt: "Directions",
                    txtcolor: Colors.black,
                    color1: Colors.white,
                    fontsize: size.convert(context, 12),
                    borderColor: blueColor,
                    borderwidth: 1.5,
                    rigtWidget: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.convertWidth(context, 5)
                      ),
                        child: Image.asset("assets/icons/navigate.png")),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
