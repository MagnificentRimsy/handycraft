
import 'package:handycraft/UIScreen/DashBoard.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:handycraft/styles/size.dart';

class CustomAppBar extends StatelessWidget {
  BuildContext parentContext;
  Function clickOnDrawer;
  Color color1;
  Color color2;
  Widget leadingIcon;
  Widget trailingIcon;
  Widget centerWigets;
  double hight;
  double paddingBottom;
  bool isbottomLine;
  CustomAppBar({
   @required this.parentContext,this.color1,this.color2,this.leadingIcon,
    this.trailingIcon,this.centerWigets, @required this.hight,this.paddingBottom,this.isbottomLine =false,
    this.clickOnDrawer
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.convert(context, 80),
      decoration: BoxDecoration(
      ),
      child:  Container(
        padding: EdgeInsets.only(
            left: size.convertWidth(context, 20),
            right: size.convertWidth(context, 20),
          top: size.convert(context, 30)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1??AppBarStartColor,color2??AppBarEndColor],
            end: Alignment.centerRight,
            begin: Alignment.centerLeft,
          )
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap:   ()    {
                  

                Navigator.push(context, PageTransition(child: DashBoard(), type: PageTransitionType.fade));
                } ,         

                
                // clickOnDrawer,
                //     () async {
                //   // await FlutterBlue.instance.stopScan();
                //   Navigator.pushReplacement(context,
                //       PageTransition(
                //           child: HealthDevicesScreen(),
                //           type: PageTransitionType.fade
                //       ));
                // },
                child: leadingIcon == null ? Icon(Icons.menu,
                  size: size.convert(context, 25),) : leadingIcon,
              ),
              centerWigets != null ? centerWigets : Container(),
              trailingIcon != null ? trailingIcon : Container(),
            ],
          ),
      ),
    );
  }

}
