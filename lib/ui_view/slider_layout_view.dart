import 'dart:async';

import 'package:handycraft/models/slider.dart';
import 'package:handycraft/UIScreen/signInScreen.dart';
import 'package:handycraft/UIScreen/signUpScreen.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:handycraft/common_widgets/slide_dots.dart';
import 'package:handycraft/common_widgets/slide_items/slide_item.dart';

class SliderLayoutView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SliderLayoutViewState();
}

class _SliderLayoutViewState extends State<SliderLayoutView> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) => topSliderLayout();

  //   SingleChildScrollView(
  //   child: Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: <Widget>[
  //       Container(
  //         padding: const EdgeInsets.all(15.0),
  //         decoration: BoxDecoration(
  //           color: blueColor,
  //           borderRadius: BorderRadius.only(
  //             bottomLeft: Radius.circular(50.0),
  //             bottomRight: Radius.circular(50.0),
  //           ),
  //           boxShadow: [
  //             BoxShadow(
  //               offset: Offset(0, 5),
  //               blurRadius: 25.0,
  //               color: Colors.white,
  //             )
  //           ],
  //         ),
  //         child: ,
  //       )
  //       // image and text was here
  //     ],
  //   ),
  // ),

  Widget topSliderLayout() => Container(
   
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
            color: Colors.white,
          ),
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              onPageChanged: _onPageChanged,
              itemCount: sliderArrayList.length,
              itemBuilder: (ctx, i) => SlideItem(i),
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.0, bottom: 15.0),
                    child: GestureDetector(
                      child: Text(
                        Constants.NEXT,
                        style: TextStyle(
                          fontFamily: Constants.OPEN_SANS,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInScreen()));
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 15.0),
                    child: GestureDetector(
                      child: Text(
                        Constants.SKIP,
                        style: TextStyle(
                          fontFamily: Constants.OPEN_SANS,
                          fontWeight: FontWeight.w600,
                          fontSize: 14.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()));
                      },
                    ),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.bottomCenter,
                  margin: EdgeInsets.only(bottom: 180.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < sliderArrayList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
