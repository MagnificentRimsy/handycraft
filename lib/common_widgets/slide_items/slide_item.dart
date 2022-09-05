import 'package:handycraft/Models/slider.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50.0),
                    bottomRight: Radius.circular(50.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 25.0,
                      color: Colors.white,
                    )
                  ],
                ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width * 0.6,
            width: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(sliderArrayList[index].sliderImageUrl),
              ),
            ),

            
          ),
          SizedBox(
            height: 60.0,
          ),
          Text(
            sliderArrayList[index].sliderHeading,
            style: TextStyle(
              fontFamily: Constants.POPPINS,
              fontWeight: FontWeight.w700,
              fontSize: 20.5,
              color: Colors.white
            ),
            
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          // Center(
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 40.0),
          //     child: Text(
          //       sliderArrayList[index].sliderSubHeading,
          //       style: TextStyle(
          //         fontFamily: Constants.OPEN_SANS,
          //         fontWeight: FontWeight.w500,
          //         letterSpacing: 1.5,
          //         fontSize: 12.5,
          //       ),
          //       textAlign: TextAlign.center,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
