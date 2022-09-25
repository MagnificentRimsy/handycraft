import 'dart:io';

import 'package:handycraft/models/BookingInfo.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
class ProductWigets extends StatelessWidget {
  Widget Address;
  String imageUrl;
  File file;
  bool fileImage;
  bool assetImage;
  Color color;
  double imageHeight;
  List<BookingInfo> bookingList;
  ProductWigets({this.color,this.imageUrl,this.file,this.fileImage,this.assetImage,this.imageHeight,this.bookingList,this.Address});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.symmetric(
        vertical: size.convert(context, 10),
        horizontal: size.convertWidth(context, 10)
      ),
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                   height: size.convert(context, imageHeight??131),
                  decoration: BoxDecoration(
                      color: color??appColor,
                      borderRadius: BorderRadius.circular(10),
                      image: imageUrl == null
                          ? null
                          : DecorationImage(
                          image: fileImage??false
                              ? FileImage(file)
                              : assetImage
                              ? AssetImage(imageUrl)
                              : NetworkImage(imageUrl),
                          fit: BoxFit.cover
                      )),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: size.convert(context, 5),
                    horizontal: size.convertWidth(context, 5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: size.convertWidth(context, 3),
                          vertical: size.convert(context, 3)
                        ),
                        child: RichText(
                          text: TextSpan(
                            text: "Open (Close at 10:00 pm)",
                            style: style.PoppinsRegular(
                              color: Colors.black,
                              fontSize: size.convert(context, 10)
                            )
                          ),
                        ),
                      ),
                      Icon(Icons.bookmark,color: greyColor,)
                    ],
                  ),
                )
              ],
            ),
          ),
          SpacebetweenTextField(
            spacing: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: RichText(
                    text: TextSpan(
                      text: "Fantisia Place",
                      style: style.PoppinsSemiBold(
                        fontSize: size.convert(context, 16),
                        color: Colors.black
                      )
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "(24)",
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: greyColor
                                    )
                                ),
                                TextSpan(
                                    text: " ",
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: greyColor
                                    )
                                ),
                                TextSpan(
                                    text: "4.5",
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Colors.black
                                    )
                                ),
                              ]
                          ),
                        ),
                      ),
                      Icon(Icons.star,size: size.convert(context, 15),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SpacebetweenTextField(
            spacing: 5,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Address??Container(
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
               (bookingList?.length?? 0) > 0 ? Container() : Container(
                  child: RichText(
                    text: TextSpan(
                       children: [
                         TextSpan(
                             text: "From",
                             style: style.PoppinsRegular(
                                 fontSize: size.convert(context, 12),
                                 color: greyColor
                             )
                         ),
                         TextSpan(
                             text: " ",
                             style: style.PoppinsRegular(
                                 fontSize: size.convert(context, 12),
                                 color: greyColor
                             )
                         ),
                         TextSpan(
                             text: "N70",
                             style: style.PoppinsSemiBold(
                                 fontSize: size.convert(context, 12),
                                 color: Colors.black
                             )
                         ),
                       ]
                    ),
                  ),
                ),
              ],
            ),
          ),
          SpacebetweenTextField(
            spacing: 5,
          ),

          Container(
            child: ListView.separated(
              shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context,index){
                  return Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text("${bookingList[index].title}",style: style.PoppinsSemiBold(
                                  fontSize: size.convert(context, 12),
                                  color: Colors.black
                                ),),
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "${bookingList[index].price}",
                                        style: style.PoppinsSemiBold(
                                          fontSize: size.convert(context, 12),
                                          color: blueColor,
                                        )
                                      ),
                                      TextSpan(
                                          text: " ${bookingList[index].time}",
                                          style: style.PoppinsSemiBold(
                                            fontSize: size.convert(context, 12),
                                            color: greyColor,
                                          )
                                      ),
                                    ]
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: filledButton(
                            w: size.convertWidth(context, 85),
                            h: size.convert(context, 25),
                            txt: "Book",
                            fontsize: size.convert(context, 12),
                            color1: Colors.white,
                            txtcolor: blueColor,
                            borderColor: blueColor,
                            borderwidth: 2,
                            borderRadius: 12,
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context,index){
                  return SpacebetweenTextField(spacing: 10,);
                },
                itemCount: bookingList?.length??0),
          )

        ],
      ),
    );
  }
}
