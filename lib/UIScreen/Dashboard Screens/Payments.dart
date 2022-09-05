import 'package:handycraft/styles/styles.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../AddPayment.dart';

class Payments extends StatefulWidget {
  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  List cards = ['5555', '6666', '7777'];
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
          trailingIcon: circularCenterImage(
            imageUrl: "assets/icons/ProfileImage.png",
            assetImage: true,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 25),
          child: Column(
            children: [
              SizedBox(height: 20,),
              ListTile(
                title: Text('Your Cards', style: style.PoppinsSemiBold(fontSize: 18,),),
                trailing: squareButton(icon: Icons.add, backgroundColor: Color(0xff5034a3), iconColor: Colors.white, ontap: (){
                  Navigator.push(context, PageTransition(child: AddPayment(), type: PageTransitionType.fade));
                },),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: cards.map((e){
                    return Stack(
                      children: [
                        SvgPicture.string('<svg xmlns="http://www.w3.org/2000/svg" width="300" height="331" viewBox="35 40 350 331"><g id="Group_268" data-name="Group 268" transform="translate(11 -142)"><rect id="Rectangle_162" data-name="Rectangle 162" width="338" height="211" rx="27" transform="translate(35 217)" fill="#1a2d6d"/><circle id="Ellipse_34" data-name="Ellipse 34" cx="12.5" cy="12.5" r="12.5" transform="translate(303 385)" fill="#d5dbe1"/><circle id="Ellipse_33" data-name="Ellipse 33" cx="12.5" cy="12.5" r="12.5" transform="translate(290 385)" fill="#ff3a2a"/><circle id="Ellipse_705" data-name="Ellipse 705" cx="75" cy="75" r="75" transform="translate(224 323)" fill="#fff" opacity="0.107"/><circle id="Ellipse_706" data-name="Ellipse 706" cx="75" cy="75" r="75" transform="translate(-11 142)" fill="#fff" opacity="0.107"/></g></svg>'),
                        Positioned(
                          bottom: 105,
                          left: 40,
                          child: Text('***** **** **** ${e}', style: GoogleFonts.roboto(fontSize: 18, color: Colors.white),),
                        ),
                        e!='5555'?Container():Positioned(
                          bottom: 50,
                          left: 50,
                          right: 50,
                          child: Row(
                            children: [
                              SvgPicture.string('<svg xmlns="http://www.w3.org/2000/svg" width="25" height="17" viewBox="0 0 25 17"><g id="Group_76" data-name="Group 76" transform="translate(-131 -440)"><g id="Rectangle_165" data-name="Rectangle 165" transform="translate(131 440)" fill="#fff" stroke="#434343" stroke-width="1"><rect width="25" height="17" rx="2" stroke="none"/><rect x="0.5" y="0.5" width="24" height="16" rx="1.5" fill="none"/></g><line id="Line_47" data-name="Line 47" x2="8" transform="translate(134.5 452.5)" fill="none" stroke="#707070" stroke-width="1"/></g></svg>'),
                              SizedBox(width: 10,),
                              Text('Default Card', style: style.PoppinsRegular(fontSize: 16, color: Color(0xffABADB3)),),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                          ),

                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Divider(
                indent: 35,
                endIndent: 35,
                thickness: 1.2,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Your Transactions', style: style.PoppinsSemiBold(fontSize: 19),),
                    Text('N 45400', style: style.PoppinsSemiBold(fontSize: 14),),
                  ],
                )
              ),
              Column(
                children: List.generate(5, (index){
                  return ListTile(
                    leading: SvgPicture.string('<svg xmlns="http://www.w3.org/2000/svg" width="31.42" height="34.833" viewBox="0 0 31.42 34.833"><g id="smartphone" transform="translate(-2.29 -0.583)"><path id="Path_1262" data-name="Path 1262" d="M27.623,31.833c-6.917,0-11.667,3.583-15,3.583S2.29,33.5,2.29,18.167,11.707.583,15.373.583C32.54.583,39.873,31.833,27.623,31.833Z" fill="#efefef"/><path id="Path_1263" data-name="Path 1263" d="M31.5,5A1.5,1.5,0,1,1,33,3.5,1.5,1.5,0,0,1,31.5,5Zm0-2a.5.5,0,1,0,.5.5A.5.5,0,0,0,31.5,3Z" fill="#a4afc1"/><path id="Path_1264" data-name="Path 1264" d="M22.25,27.25a2,2,0,0,1-2,2H9.75a2,2,0,0,1-2-2V8.75a2,2,0,0,1,2-2h10.5a2,2,0,0,1,2,2Z" fill="#f3f3f1"/><path id="Path_1265" data-name="Path 1265" d="M28.25,15.75v1H14.75v-1a2.006,2.006,0,0,1,2-2h9.5A2.006,2.006,0,0,1,28.25,15.75Z" fill="#f3f3f1"/><path id="Path_1266" data-name="Path 1266" d="M9.75,6.75h.5a1.5,1.5,0,0,1,1.5,1.5,1,1,0,0,0,1,1h4.5a1,1,0,0,0,1-1,1.5,1.5,0,0,1,1.5-1.5h-10Z" fill="#5034a3"/><path id="Path_1267" data-name="Path 1267" d="M28.25,16.75v3.5a2.006,2.006,0,0,1-2,2h-9.5a2.006,2.006,0,0,1-2-2v-3.5Z" fill="#5034a3"/><path id="Path_1268" data-name="Path 1268" d="M10,27.25V8.75a2,2,0,0,1,2-2H9.75a2,2,0,0,0-2,2v18.5a2,2,0,0,0,2,2H12A2,2,0,0,1,10,27.25Z" fill="#d5dbe1"/><path id="Path_1269" data-name="Path 1269" d="M19,13.75H16.75a2.006,2.006,0,0,0-2,2v1H17v-1A2.006,2.006,0,0,1,19,13.75Z" fill="#d5dbe1"/><path id="Path_1270" data-name="Path 1270" d="M14,8.25a1.5,1.5,0,0,0-1.5-1.5H10.25a1.5,1.5,0,0,1,1.5,1.5,1,1,0,0,0,1,1H15A1,1,0,0,1,14,8.25Z" fill="#046277"/><path id="Path_1271" data-name="Path 1271" d="M17,20.25v-3.5H14.75v3.5a2.006,2.006,0,0,0,2,2H19A2.006,2.006,0,0,1,17,20.25Z" fill="#07667c"/><path id="Path_1272" data-name="Path 1272" d="M17.25,10h-4.5A1.752,1.752,0,0,1,11,8.25a.752.752,0,0,0-.75-.75h-.5a.75.75,0,0,1,0-1.5h.5A2.253,2.253,0,0,1,12.5,8.25a.25.25,0,0,0,.25.25h4.5a.25.25,0,0,0,.25-.25A2.253,2.253,0,0,1,19.75,6h.5a.75.75,0,0,1,0,1.5h-.5a.752.752,0,0,0-.75.75A1.752,1.752,0,0,1,17.25,10Z"/><path id="Path_1273" data-name="Path 1273" d="M20.25,30H9.75A2.752,2.752,0,0,1,7,27.25V8.75A2.752,2.752,0,0,1,9.75,6h10.5A2.752,2.752,0,0,1,23,8.75v1.5H21.5V8.75A1.252,1.252,0,0,0,20.25,7.5H9.75A1.252,1.252,0,0,0,8.5,8.75v18.5A1.252,1.252,0,0,0,9.75,28.5h10.5a1.252,1.252,0,0,0,1.25-1.25V25.812H23V27.25A2.752,2.752,0,0,1,20.25,30Z"/><path id="Path_1274" data-name="Path 1274" d="M26.25,23h-9.5A2.752,2.752,0,0,1,14,20.25v-4.5A2.752,2.752,0,0,1,16.75,13h9.5A2.752,2.752,0,0,1,29,15.75v4.5A2.752,2.752,0,0,1,26.25,23Zm-9.5-8.5a1.252,1.252,0,0,0-1.25,1.25v4.5a1.252,1.252,0,0,0,1.25,1.25h9.5a1.252,1.252,0,0,0,1.25-1.25v-4.5a1.252,1.252,0,0,0-1.25-1.25Z"/><path id="Path_1275" data-name="Path 1275" d="M28.25,17.5H14.75a.75.75,0,0,1,0-1.5h13.5a.75.75,0,0,1,0,1.5Z"/></g></svg>'),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hair Cut', style: style.PoppinsRegular(fontSize: 14, color: Colors.black),),
                        Text('N 2500', style: style.PoppinsRegular(fontSize: 14, color: Color(0xff5034a3)),),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Feb 20', style: style.PoppinsRegular(fontSize: 14, color: Color(0xff8B8B8B)),),
                        Text('Fantasia Palace', style: style.PoppinsRegular(fontSize: 14, color: Color(0xff5034a3)),),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
