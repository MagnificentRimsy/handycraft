import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:handycraft/styles/size.dart';

class Reviews extends StatefulWidget {
  @override 
  
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
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
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            children: [
              TabBar(
                indicatorColor: Color(0xff5034a3),
                tabs: [
                  Tab(
                    child: Text('Reviewed', style: style.PoppinsSemiBold(fontSize: 14, color: Color(0xff5034a3)),),
                  ),
                  Tab(
                    child: Text('Not Reviewed', style: style.PoppinsSemiBold(fontSize: 14, color: Color(0xff5034a3)),),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height - size.convert(context, 124),
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(5, (index){
                        return Padding(
                          padding: EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcHklMjB1c2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                                ),
                                title: Text('Funmi Ayinde', style: style.PoppinsRegular(color: Colors.black, fontSize: 14),),
                                subtitle: Text('28 Feb 2020, 15:40', style: style.PoppinsRegular(color: Color(0xff8B8B8B), fontSize: 11),),
                                trailing: Text('4.0', style: style.PoppinsRegular(color: Color(0xff434343), fontSize: 15),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60, right: 30),
                                child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'PoppinsRegular', height: 1.5), maxLines: 10),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(5, (index){
                        return Padding(
                          padding: EdgeInsets.only(left: 0, right: 0, top: 20, bottom: 0),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcHklMjB1c2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                                ),
                                title: Text('Funmi Ayinde', style: style.PoppinsRegular(color: Colors.black, fontSize: 14),),
                                subtitle: Text('28 Feb 2020, 15:40', style: style.PoppinsRegular(color: Color(0xff8B8B8B), fontSize: 11),),
                                trailing: Text('4.0', style: style.PoppinsRegular(color: Color(0xff434343), fontSize: 15),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 60, right: 30),
                                child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', style: TextStyle(fontSize: 13, color: Colors.black,fontFamily: 'PoppinsRegular', height: 1.5), maxLines: 10),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
