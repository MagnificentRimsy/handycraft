
import 'package:handycraft/UIScreen/Bookings.dart';
import 'package:handycraft/UIScreen/Favourite.dart';
import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/UIScreen/searchService.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
class CustomBottomBar extends StatefulWidget {
  int select ;

  CustomBottomBar({this.select});
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  Widget space =  SpacebetweenTextField(
    spacing: 5,
  );
  @override
  Widget build(BuildContext context) {
    Color unSelectedColor = Color(0xff7e7e7e);
    Color SelectedColor = blueColor;
    TextStyle unselectTextstyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 12,
      color: unSelectedColor,
    );
    TextStyle selectTextstyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 12,
      color: SelectedColor,
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF).withOpacity(0.05),
      ),
      height: size.convert(context, 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
         
            child: InkWell(
              onTap: () {
                // print("1");
                // setState(() {
                //   widget.select = 1;
                // });
                if(widget.select!=1){
                  Navigator.pushReplacement(context,
                      PageTransition(
                          type: PageTransitionType.fade, child: HomeExplore()));
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search,color: widget.select == 1? blueColor : greyColor,),
                    space,
                    Text(
                      "Explore",
                      style: widget.select == 1 ? selectTextstyle : unselectTextstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                // setState(() {
                //   widget.select = 2;
                
                // });
                if(widget.select!=2){
                  Navigator.pushReplacement(context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Favourite()));
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.bookmark,color: widget.select == 2? blueColor : greyColor,),
                    space,
                    Text(
                      "Favorites",
                      style: widget.select == 2 ? selectTextstyle : unselectTextstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                // setState(() {
                //   widget.select = 3;
                //   print("index print  ${widget.select}");
                // });
                if(widget.select != 3 ){
                  Navigator.pushReplacement(context,
                      PageTransition(
                          type: PageTransitionType.fade, child: Bookings()));
                }
              },
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.calendar_today_rounded,color: widget.select == 3? blueColor : greyColor ,),
                    space,
                    Text(
                      "Booking",
                      style: widget.select == 3 ? selectTextstyle : unselectTextstyle,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


