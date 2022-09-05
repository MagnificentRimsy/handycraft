import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:page_transition/page_transition.dart';

class OnBoardingScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
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
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Image.asset(
                              "assets/images/onboarding_3.png",
                              fit: BoxFit.contain,
                              width: 250,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80.0,
                    ),
                    Text("Book your services",
                        style: style.PoppinsSemiBold(
                          color: Color(0xffffffff),
                          fontSize: size.convert(context, 16),
                        )),
                    SpacebetweenTextField(
                      spacing: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                            "assets/images/activepage.png",
                            fit: BoxFit.contain,
                            width: 60,
                          ),
                        
                      ],
                    ),
                     SizedBox(
                height: 100.0,
              ),
                    Column(
                      children: [
                        Container(
                          child: filledButton(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeExplore(),
                                      type: PageTransitionType.fade));
                            },
                            txt: "Get Started ",
                            fontsize: size.convert(context, 12),
                            color1: ButtonColor,
                            borderRadius: 15,
                          ),
                        ),
                      ],
                    )

                    // Row(
                    //   children: <Widget>[
                    //     Expanded(
                    //       child: Container(
                    //         height: 90,
                    //         margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffe2f7fc),
                    //           borderRadius: BorderRadius.circular(5.0),
                    //         ),
                    //         child: Icon(
                    //           Icons.image,
                    //           size: 50,
                    //           color: Color(0xff00c5ff),
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         height: 90,
                    //         margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffe2f7fc),
                    //           borderRadius: BorderRadius.circular(5.0),
                    //           border: Border.all(
                    //             color: Colors.blue,
                    //             width: 2,
                    //           ),
                    //         ),
                    //         child: Icon(
                    //           Icons.play_circle_filled,
                    //           size: 50,
                    //           color: Color(0xff66d043),
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         height: 90,
                    //         margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //         decoration: BoxDecoration(
                    //           color: Color(0xffe2f7fc),
                    //           borderRadius: BorderRadius.circular(5.0),
                    //         ),
                    //         child: Icon(
                    //           Icons.library_books,
                    //           size: 50,
                    //           color: Color(0xff9868ff),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





























































// import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
// import 'package:handycraft/ui_view/slider_layout_view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:handycraft/styles/styles.dart';

// class OnBoardingScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: onBordingBody(),
//     );
//   }

//   Widget onBordingBody() => Container(
//         child: SliderLayoutView(),
//       );
// }
