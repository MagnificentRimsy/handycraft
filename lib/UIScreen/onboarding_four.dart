import 'package:handycraft/UIScreen/HomeExplore.dart';
import 'package:handycraft/common_widgets/SpacebetweenTextField.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/common_widgets/filled_button.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingFourScreen extends StatefulWidget {
  @override
  _OnboardingFourScreenState createState() => _OnboardingFourScreenState();
}

class _OnboardingFourScreenState extends State<OnboardingFourScreen> {
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
            clickOnDrawer: () {
              _scaffoldkey.currentState.openDrawer();
            },
            leadingIcon: Container(),

          ),
        ),
        body: _body());
  }

  _body() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.convertWidth(context, 25)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: size.convert(context, 10)),
              child: Text(
                "Enable Notification",
                style: style.PoppinsSemiBold(
                  color: Colors.black,
                  fontSize: size.convert(context, 20),
                ),
                textAlign: TextAlign.left,
              ),
            ),
              SpacebetweenTextField(
              spacing: 30,
            ),
            Container(
//              child: Image.asset(
//                "assets/images/onboarding_four.png",
//                width: 250,
//              ),
              child: SvgPicture.string('<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="245.992" height="255.852" viewBox="0 0 245.992 255.852"><defs><linearGradient id="linear-gradient" x1="0.5" y1="1" x2="0.5" gradientUnits="objectBoundingBox"><stop offset="0" stop-color="gray" stop-opacity="0.251"/><stop offset="0.54" stop-color="gray" stop-opacity="0.122"/><stop offset="1" stop-color="gray" stop-opacity="0.102"/></linearGradient><linearGradient id="linear-gradient-2" x1="0.5" y1="1" x2="0.5" y2="0" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-3" x1="1.115" y1="1.124" x2="1.115" y2="0.124" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-4" x1="0.5" y1="1" x2="0.5" y2="0" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-5" x1="1.17" y1="2.05" x2="1.17" y2="1.05" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-6" x1="0.5" y1="1" x2="0.5" y2="0" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-7" x1="0.5" y1="1" x2="0.5" y2="0" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-8" x1="0.5" y1="1" x2="0.5" y2="0" xlink:href="#linear-gradient"/><linearGradient id="linear-gradient-9" x1="0.5" y1="1" x2="0.5" gradientUnits="objectBoundingBox"><stop offset="0" stop-opacity="0.122"/><stop offset="0.55" stop-opacity="0.09"/><stop offset="1" stop-opacity="0.02"/></linearGradient><linearGradient id="linear-gradient-10" x1="2.688" y1="2.908" x2="2.688" y2="1.864" xlink:href="#linear-gradient"/></defs><g id="Group_238" data-name="Group 238" transform="translate(-85.84 -276)"><path id="Path_1140" data-name="Path 1140" d="M733.02,199.05C717.93,139.712,665.789,96.878,604.586,95.16c-32.356-.908-66.4,9.823-91.193,47.375-44.313,67.128,2.723,113.515,35.516,135.558a205.191,205.191,0,0,1,42.412,38.12c22.15,26.285,64.762,58.948,115.511,7.77C743.616,286.89,743.072,238.575,733.02,199.05Z" transform="translate(-409.473 180.892)" fill="#e6e5ea" opacity="0.431"/><g id="Group_236" data-name="Group 236" transform="translate(110.665 300.936)"><path id="Path_1173" data-name="Path 1173" d="M220.706,516.84s-.185-.545-.486-1.56" transform="translate(-210.977 -394.485)" fill="none" stroke="#69f0ae" stroke-miterlimit="10" stroke-width="9"/><path id="Path_1174" data-name="Path 1174" d="M206.7,254.283c-6.631-25.531-27.3-143.2,179.934-69.741" transform="translate(-198.34 -136.652)" fill="none" stroke="#ff3a2a" stroke-miterlimit="10" stroke-width="4" stroke-dasharray="12.04 12.04"/><path id="Path_1175" data-name="Path 1175" d="M882.35,250l1.541.546" transform="translate(-692.499 -201.565)" fill="none" stroke="#69f0ae" stroke-miterlimit="10" stroke-width="9"/><path id="Path_1176" data-name="Path 1176" d="M496.346,523.614a22.151,22.151,0,0,0-43.916-4.13l-68.08-1.847.747,11.7s-9.708,22.4,41.313,28.368v22.64h58.983V542.7A22.138,22.138,0,0,0,496.346,523.614Z" transform="translate(-330.338 -384.431)" fill="url(#linear-gradient)"/><path id="Path_1177" data-name="Path 1177" d="M393.726,575.593s-9.3,21.45,39.565,27.173v21.691h56.487V567.011L393,564.39Z" transform="translate(-336.628 -430.199)" fill="#ad6359"/><path id="Path_1178" data-name="Path 1178" d="M367.213,181.608h0a10.414,10.414,0,0,1-14.32,3.254l-30.329-19.986a10.414,10.414,0,0,1-3.254-14.32h0a10.414,10.414,0,0,1,14.309-3.254l30.329,19.986A10.414,10.414,0,0,1,367.213,181.608Z" transform="translate(-281.884 -125.729)" fill="url(#linear-gradient-2)"/><path id="Path_1179" data-name="Path 1179" d="M370.325,184.327h0a9.68,9.68,0,0,1-13.311,3.025l-28.2-18.578a9.681,9.681,0,0,1-3.025-13.311h0a9.68,9.68,0,0,1,13.311-3.025l28.2,18.581A9.681,9.681,0,0,1,370.325,184.327Z" transform="translate(-286.677 -129.542)" fill="#ad6359"/><circle id="Ellipse_691" data-name="Ellipse 691" cx="21.213" cy="21.213" r="21.213" transform="translate(121.211 118.7)" fill="#ad6359"/><rect id="Rectangle_211" data-name="Rectangle 211" width="87.946" height="158.74" rx="12.25" transform="translate(54.001)" fill="url(#linear-gradient-3)"/><rect id="Rectangle_212" data-name="Rectangle 212" width="85.567" height="154.452" rx="13.64" transform="translate(55.191 2.147)" fill="#fff"/><path id="Path_1180" data-name="Path 1180" d="M458.674,94.49a6.937,6.937,0,0,1-6.838,5.9H422.284a6.936,6.936,0,0,1-6.836-5.9H399.791a3.249,3.249,0,0,0-3.251,3.249v140.2a3.249,3.249,0,0,0,3.249,3.251h74.777a3.249,3.249,0,0,0,3.251-3.249V97.741a3.249,3.249,0,0,0-3.249-3.251Z" transform="translate(-339.203 -88.473)" fill="#eff1f2"/><rect id="Rectangle_213" data-name="Rectangle 213" width="19.069" height="1.192" rx="0.596" transform="translate(88.561 7.867)" fill="#dbdbdb"/><circle id="Ellipse_692" data-name="Ellipse 692" cx="0.715" cy="0.715" r="0.715" transform="translate(110.966 7.629)" fill="#dbdbdb"/><path id="Path_1181" data-name="Path 1181" d="M688.8,398.222h0c-6.156,1.424-10.382-2.591-11.805-8.745l-14.146-52.524a11.522,11.522,0,0,1,8.606-13.777h0a11.522,11.522,0,0,1,13.777,8.606l11.544,53.872C698.2,391.818,694.951,396.8,688.8,398.222Z" transform="translate(-532.658 -254.569)" fill="url(#linear-gradient-4)"/><rect id="Rectangle_214" data-name="Rectangle 214" width="19.306" height="77.087" rx="9.653" transform="translate(130 73.442) rotate(-13.01)" fill="#ad6359"/><rect id="Rectangle_215" data-name="Rectangle 215" width="80.739" height="18.821" transform="translate(82.811 187.16)" fill="url(#linear-gradient-5)"/><rect id="Rectangle_216" data-name="Rectangle 216" width="76.375" height="14.729" transform="translate(84.993 189.342)" fill="#5034a3"/><path id="Path_1192" data-name="Path 1192" d="M355.851,295.4h0a10.338,10.338,0,0,1-14.214,3.23l-25.777-16.783a10.338,10.338,0,0,1-3.23-14.214h0a10.338,10.338,0,0,1,14.214-3.23l25.777,16.783A10.338,10.338,0,0,1,355.851,295.4Z" transform="translate(-277.036 -210.892)" fill="url(#linear-gradient-6)"/><path id="Path_1193" data-name="Path 1193" d="M358.406,297.668h0a9.68,9.68,0,0,1-13.311,3.025l-24.143-15.72a9.681,9.681,0,0,1-3.025-13.311h0a9.681,9.681,0,0,1,13.311-3.025l24.143,15.72A9.68,9.68,0,0,1,358.406,297.668Z" transform="translate(-280.961 -214.046)" fill="#ad6359"/><path id="Path_1194" data-name="Path 1194" d="M351.287,406.87h0a10.289,10.289,0,0,1-14.148,3.216L316.8,396.924a10.289,10.289,0,0,1-3.216-14.148h0a10.289,10.289,0,0,1,14.148-3.216l20.34,13.164A10.289,10.289,0,0,1,351.287,406.87Z" transform="translate(-277.731 -294.645)" fill="url(#linear-gradient-7)"/><path id="Path_1195" data-name="Path 1195" d="M352.754,519.232h0a10.381,10.381,0,0,1-14.277,3.246l-12.6-9.192a10.382,10.382,0,0,1-3.246-14.277h0a10.382,10.382,0,0,1,14.277-3.235l12.6,9.19A10.381,10.381,0,0,1,352.754,519.232Z" transform="translate(-284.304 -379.147)" fill="url(#linear-gradient-8)"/><path id="Path_1196" data-name="Path 1196" d="M354.742,521.219h0a9.681,9.681,0,0,1-13.311,3.025l-11.748-8.57a9.68,9.68,0,0,1-3.025-13.311h0a9.681,9.681,0,0,1,13.311-3.025l11.748,8.57A9.68,9.68,0,0,1,354.742,521.219Z" transform="translate(-287.309 -381.819)" fill="#ad6359"/><rect id="Rectangle_217" data-name="Rectangle 217" width="55.645" height="16.639" transform="translate(70.152 88.259)" fill="url(#linear-gradient-9)"/><rect id="Rectangle_218" data-name="Rectangle 218" width="51.826" height="12.002" transform="translate(72.061 89.896)" fill="#5034a3"/><path id="Path_1197" data-name="Path 1197" d="M728.928,169.533l.979.153-.153-.145h.082l-.128-.044L711.954,152.66l-4.31,6.8-3.584,6.2,1.661.259-.736,3.361Z" transform="translate(-508.74 -111.019)" fill="url(#linear-gradient-10)"/><path id="Path_1198" data-name="Path 1198" d="M711.2,175.741l-3.273,5.676,24,3.909-15.46-10.766Z" transform="translate(-511.555 -126.946)" fill="#6c63ff"/><path id="Path_1199" data-name="Path 1199" d="M711.2,175.741l-3.273,5.676,24,3.909-15.46-10.766Z" transform="translate(-511.555 -126.946)" opacity="0.2"/><path id="Path_1200" data-name="Path 1200" d="M723.872,156.09l16.789,15.8-20.73-9.585Z" transform="translate(-520.282 -113.514)" fill="#5034a3"/><path id="Path_1201" data-name="Path 1201" d="M711.17,192.724l23.054.439L712.7,185.52Z" transform="translate(-513.911 -134.916)" fill="#5034a3"/><path id="Path_1202" data-name="Path 1202" d="M353.391,408.786h0a9.68,9.68,0,0,1-13.311,3.025l-19.137-12.384a9.68,9.68,0,0,1-3.025-13.311h0a9.681,9.681,0,0,1,13.311-3.039l19.137,12.384A9.681,9.681,0,0,1,353.391,408.786Z" transform="translate(-280.953 -297.273)" fill="#ad6359"/></g><g id="notification_1_" data-name="notification (1)" transform="translate(184.431 329.469)"><path id="Path_1203" data-name="Path 1203" d="M5.742,38.76c0-9.958-5.158-16.8-5.158-21.594S3.342,2.29,25.416,2.29,50.728,15.847,50.728,21.124C50.73,45.838,5.742,56.395,5.742,38.76Z" transform="translate(0 0)" fill="#fff"/><g id="Group_237" data-name="Group 237" transform="translate(7.841 3.132)"><path id="Path_1204" data-name="Path 1204" d="M5.625,6.125H8.5v1.44H5.625Z" transform="translate(-5.625 -1.446)" fill="#ff3a2a"/><path id="Path_1205" data-name="Path 1205" d="M11.375,6.125h2.879v1.44H11.375Z" transform="translate(-3.097 -1.446)" fill="#ff3a2a"/><path id="Path_1206" data-name="Path 1206" d="M8.875,8.625h1.44V11.5H8.875Z" transform="translate(-4.196 -0.347)" fill="#ff3a2a"/><path id="Path_1207" data-name="Path 1207" d="M8.875,2.875h1.44V5.754H8.875Z" transform="translate(-4.196 -2.875)" fill="#ff3a2a"/></g><path id="Path_1208" data-name="Path 1208" d="M14,26.25a4.319,4.319,0,0,0,8.638,0Z" transform="translate(5.898 10.533)" fill="#5034a3"/><path id="Path_1209" data-name="Path 1209" d="M30.064,18.748v4.014a10.736,10.736,0,0,0,3.806,8.2h0l.007.006a1.44,1.44,0,0,1-.936,2.534H9.19a1.44,1.44,0,0,1-.936-2.534l.007-.006h0a10.738,10.738,0,0,0,3.806-8.2V18.748a9,9,0,1,1,18,0Z" transform="translate(3.15 3.279)" fill="#f3f3f1"/><path id="Path_1210" data-name="Path 1210" d="M10.989,32.064a1.436,1.436,0,0,1,.5-1.094l.007-.006h0a10.738,10.738,0,0,0,3.806-8.2V18.748A9,9,0,0,1,22.686,9.9a8.969,8.969,0,0,0-10.617,8.845v4.014a10.736,10.736,0,0,1-3.806,8.2h0l-.007.006A1.44,1.44,0,0,0,9.19,33.5h3.239A1.444,1.444,0,0,1,10.989,32.064Z" transform="translate(3.15 3.279)" fill="#d5dbe1"/><circle id="Ellipse_693" data-name="Ellipse 693" cx="6.118" cy="6.118" r="6.118" transform="translate(28.176 8.711)" fill="#5034a3"/><path id="Path_1211" data-name="Path 1211" d="M22.989,12.868a6.1,6.1,0,0,1,4.5-5.874,6.029,6.029,0,0,0-1.62-.245,6.118,6.118,0,0,0,0,12.237,6.029,6.029,0,0,0,1.62-.245A6.1,6.1,0,0,1,22.989,12.868Z" transform="translate(8.426 1.961)" fill="#02657c"/><path id="Path_1212" data-name="Path 1212" d="M18.649,31.649a5.405,5.405,0,0,1-5.4-5.4h2.159a3.239,3.239,0,0,0,6.478,0h2.159A5.405,5.405,0,0,1,18.649,31.649Z" transform="translate(5.568 10.533)" fill="#434343"/><path id="Path_1213" data-name="Path 1213" d="M33.273,34.913H9.519a2.519,2.519,0,0,1-1.637-4.434,1.22,1.22,0,0,1,.109-.083,9.673,9.673,0,0,0,3.327-7.3V19.077A10.089,10.089,0,0,1,21.4,9a4.351,4.351,0,0,1,.71.043l-.354,2.129a2.106,2.106,0,0,0-.356-.014,7.927,7.927,0,0,0-7.918,7.918v4.017A11.832,11.832,0,0,1,9.3,32.12c-.019.016-.037.032-.059.048a.356.356,0,0,0-.079.226.364.364,0,0,0,.36.36H33.273a.364.364,0,0,0,.36-.36.35.35,0,0,0-.079-.226c-.02-.014-.039-.03-.058-.046a11.831,11.831,0,0,1-4.182-9.028V21.525h2.159v1.569A9.681,9.681,0,0,0,34.8,30.4a1.114,1.114,0,0,1,.105.079,2.519,2.519,0,0,1-1.637,4.434Z" transform="translate(2.821 2.95)" fill="#434343"/><path id="Path_1214" data-name="Path 1214" d="M26.2,20.4a7.2,7.2,0,1,1,7.2-7.2A7.206,7.206,0,0,1,26.2,20.4Zm0-12.237A5.039,5.039,0,1,0,31.237,13.2,5.044,5.044,0,0,0,26.2,8.159Z" transform="translate(8.096 1.631)" fill="#434343"/></g></g></svg>'),

            ),
            
         
            SpacebetweenTextField(
              spacing: 60,
            ),
            Container(
              child: Column(
                children: [
                  filledButton(
                    onTap: () {
                      showDialog(context: context, builder: (context){
                        
                        return CupertinoAlertDialog(
          
                          
                          actions: [
                            TextButton(
                              onPressed: (){
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent
                              ),
                              child: Text("Don't Allow", style: style.PoppinsRegular(fontSize: size.convert(context,14), color: Colors.black),),
                            ),
                            TextButton(
                              onPressed: (){
                               Navigator.push(
                      context,
                      PageTransition(
                          child: HomeExplore(), type: PageTransitionType.fade));
                              },
                              style: TextButton.styleFrom(),
                              child: Text('Allow', style: style.PoppinsRegular(fontSize: size.convert(context,14), color: Colors.black),),
                            )
                          ],
                          title: Text('“handycraft” would Like to Send You Notifications', style: style.PoppinsSemiBold(fontSize: 17, color: Colors.black),),
                          content: Text('\nNotification may include alerts, sounds, and icon badges. These can be configured in Settings.', style: style.PoppinsRegular(fontSize: 15, color: Colors.black),),
                        );
                      });
//                      Navigator.push(
//                          context,
//                          PageTransition(
//                              child: HomeExplore(),
//                              type: PageTransitionType.fade));
                    },
                    txt: "Enable Nofication ",
                    fontWeight: FontWeight.bold,
                    fontsize: size.convert(context, 12),
                    color1: ButtonColor,
                    borderRadius: 15,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  filledButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: HomeExplore(),
                              type: PageTransitionType.fade));
                    },
                    txt: "Not Now ",
                    fontsize: size.convert(context, 12),
                    color1: Colors.transparent,
                    borderRadius: 15,
                    fontWeight: FontWeight.bold,
                    txtcolor: Color(0xff5034a3),
                  ),
                ],
              ),
            ),
            SpacebetweenTextField(
              spacing: 40,
            ),

               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   InkWell(
                     child: Text(
                       "Skip",
                       style: style.PoppinsSemiBold(
                         color: Colors.black,
                         fontSize: size.convert(context, 12),
                       ),
                       textAlign: TextAlign.right,
                     ),
                     onTap: (){
                       Navigator.push(
                                  context,
                                  PageTransition(
                                      child: HomeExplore(),
                                      type: PageTransitionType.fade));
                     },
                   ),
                 ],
               )
          ],
        ),
      ),
    );
  }
}
