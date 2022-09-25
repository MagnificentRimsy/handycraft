import 'package:handycraft/UIScreen/BookingViewEdit.dart';
import 'package:handycraft/UIScreen/booking.success.dart';
import 'package:handycraft/common_widgets/CustomBottomAppBar.dart';
import 'package:handycraft/common_widgets/backIcon.dart';
import 'package:handycraft/common_widgets/bankDetailsTextField.dart';
import 'package:handycraft/common_widgets/circularImage.dart';
import 'package:handycraft/common_widgets/custom_appbar.dart';
import 'package:handycraft/contacts/constants.dart';
import 'package:handycraft/styles/color.dart';
import 'package:handycraft/styles/size.dart';
import 'package:handycraft/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class ViewService extends StatefulWidget {
  @override
  _ViewServiceState createState() => _ViewServiceState();
}

class _ViewServiceState extends State<ViewService> {
  String selected = 'Details';
  int rating = 4;
  String selectedBarber = 'Anyone';
  String selectedPayment = 'Bank Card';

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  final List<String> titles = <String>[
    'Cuticle Removal',
    'Gel overlay hands',
    'File and paint',
    'Deluxe Manicure',
    'IBX Treatment',
    'Elio Pedicure',
    'Tropic Facial',
    'Skin Care'
  ];
  final List<int> amount = <int>[
    2500,
    4000,
    7000,
    10000,
    2500,
    3000,
    6050,
    12500
  ];

  String descText =
      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet";
  bool descTextShowFlag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        select: 1,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              toolbarHeight: 85,
              expandedHeight: 285.0,
              backgroundColor: Colors.black,
              collapsedHeight: 100,
              floating: false,
              pinned: false,
              leading: Padding(
                  padding: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: backIcon()),
              leadingWidth: 70,
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 15, top: 15, bottom: 15),
                    child: InkWell(child: squareButton(icon: Icons.bookmark))),
              ],
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 35, bottom: 15),
                collapseMode: CollapseMode.pin,
                title: Text(
                  'Open (Closes at 10 pm)',
                  style: TextStyle(fontSize: 14),
                ),
                background: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/sd.png'),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ];
        },
        body: _body(),
      ),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                'Fantasia Place',
                style: style.PoppinsSemiBold(fontSize: 20),
              ),
              subtitle: Text(
                'Yaba left, Lagos Street',
                style: style.PoppinsRegular(fontSize: 14, color: Colors.black),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4.5',
                    style: style.PoppinsSemiBold(fontSize: 20),
                  ),
                  Text(
                    '24 Reviews',
                    style: style.PoppinsRegular(
                        fontSize: size.convert(context, 10),
                        color: Color(0xffC6C6C6)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: size.convert(context, 40),
            width: MediaQuery.of(context).size.width,
            color: Color(0xffF9F9F9),
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: ['Details', 'Services', 'Reviews', 'Map'].map((e) {
                  return InkWell(
                      onTap: () {
                        setState(() {
                          selected = e;
                        });
                      },
                      child: Text(
                        e,
                        style: selected == e
                            ? style.PoppinsSemiBold(
                                fontSize: size.convert(context, 12),
                                color: Color(0xff5034a3))
                            : style.PoppinsRegular(
                                fontSize: size.convert(context, 12),
                                color: Color(0xffABADB3)),
                      ));
                }).toList(),
              ),
            ),
          ),
          showSelected(),
        ],
      ),
    );
  }

  showSelected() {
    if (selected == 'Reviews') {
      return Column(
        children: [
          new Container(
            margin: EdgeInsets.fromLTRB(30, 30, 30, 25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(color: Color(0xffC6C6C6), width: 0.8)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '4.5',
                        style: style.PoppinsSemiBold(fontSize: 33),
                      ),
                      Text(
                        '24 Reviews',
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 10),
                            color: Color(0xffC6C6C6)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < rating
                                ? Colors.black
                                : Color(0xffC6C6C6),
                            size: 14,
                          );
                        }),
                      )
                    ],
                  ),
                ),
                Container(width: 0.8, height: 160, color: Color(0xffC6C6C6)),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('PRICE',
                                  style: style.PoppinsRegular(
                                      fontSize: size.convert(context, 12),
                                      color: Color(0xffC6C6C6))),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'SERVICE',
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: Color(0xffC6C6C6)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'STAFF',
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: Color(0xffC6C6C6)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'LOCATION',
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: Color(0xffC6C6C6)),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                'INTERIOR',
                                style: style.PoppinsRegular(
                                    fontSize: size.convert(context, 12),
                                    color: Color(0xffC6C6C6)),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.black,
                                        size: 14,
                                      );
                                    }),
                                  ),
                                  Text(
                                    '4',
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Color(0xffC6C6C6)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.black,
                                        size: 14,
                                      );
                                    }),
                                  ),
                                  Text(
                                    '4',
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Color(0xffC6C6C6)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.black,
                                        size: 14,
                                      );
                                    }),
                                  ),
                                  Text(
                                    '4',
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Color(0xffC6C6C6)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.black,
                                        size: 14,
                                      );
                                    }),
                                  ),
                                  Text(
                                    '4',
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Color(0xffC6C6C6)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(5, (index) {
                                      return Icon(
                                        Icons.star,
                                        color: Colors.black,
                                        size: 14,
                                      );
                                    }),
                                  ),
                                  Text(
                                    '4',
                                    style: style.PoppinsRegular(
                                        fontSize: size.convert(context, 12),
                                        color: Color(0xffC6C6C6)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(19, 0, 30, 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 150,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xff5034a3),
                  ),
                  child: Text(
                    'Leave Review',
                    style: style.PoppinsRegular(
                        fontSize: size.convert(context, 14)),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: List.generate(5, (index) {
              return Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFwcHklMjB1c2VyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                      ),
                      title: Text(
                        'Funmi Ayinde',
                        style: style.PoppinsRegular(
                            color: Colors.black, fontSize: 14),
                      ),
                      subtitle: Text(
                        '28 Feb 2020, 15:40',
                        style: style.PoppinsRegular(
                            color: Color(0xff8B8B8B), fontSize: 11),
                      ),
                      trailing: Text(
                        '4.0',
                        style: style.PoppinsRegular(
                            color: Color(0xff434343), fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 60, right: 30),
                      child: Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontFamily: 'PoppinsRegular',
                              height: 1.5),
                          maxLines: 10),
                    ),
                  ],
                ),
              );
            }),
          )
        ],
      );
    } else if (selected == 'Details') {
      return Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Text(descText,
                maxLines: descTextShowFlag ? 8 : 2, textAlign: TextAlign.start),
            InkWell(
              onTap: () {
                setState(() {
                  descTextShowFlag = !descTextShowFlag;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    descTextShowFlag
                        ? Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                "Show Less",
                                style: TextStyle(
                                    color: blueColor,
                                    fontSize: size.convert(context, 12),
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_drop_up_outlined,
                                color: blueColor,
                              ),
                            ],
                          )
                        : Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                "Show More",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: size.convert(context, 12),
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                color: Colors.grey,
                              ),
                            ],
                          )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 6),
              child: Align(
                alignment: Alignment.center,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: style.PoppinsRegular(
                          fontSize: size.convert(context, 13),
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.phone,
                      size: 16,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('08183832433',
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 12),
                            color: Colors.black,
                            fontWeight: FontWeight.w800)),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.phone,
                      size: 16,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text('08183832433',
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 12),
                            color: Colors.black,
                            fontWeight: FontWeight.w800)),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Monday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Tuesday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Wednesday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Thursday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Friday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Saturday'),
              trailing: Text('10:00 - 07:00'),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text('Sunday'),
              trailing: Text('10:00 - 07:00'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Home service? Call us now.',
                    style: style.PoppinsRegular(
                      fontSize: size.convert(context, 12),
                      color: Colors.black87,
                    )),
              ),
            )
          ],
        ),
      );
    } else if (selected == 'Services') {
      final ButtonStyle style =
          ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 14));

      return ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: 1000), // **THIS is the important part**

        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: titles.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                // leading: FlutterLogo(size: 56.0),
                title: Text(
                  '${titles[index]}',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      'N2,500',
                      style: TextStyle(
                        color: blueColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(' 30mins')
                  ],
                ),
                trailing: Container(
                  margin: EdgeInsets.all(10),
                  height: 50.0,
                  child: Text("Book", style: TextStyle(fontSize: 15)),
                ),
              );
              // Container(
              //   height: 50,
              //   color: Colors.amber[colorCodes[index]],
              //   child: Center(child: Text('Entry ${entries[index]}')),
              // );
            }),
      );
    } else {
      return Column(
        children: [
          InkWell(
            onTap: () {
              // selectBookingPayment();
              addBooking();
            },
            child: new Container(
              height: 180,
              margin: EdgeInsets.all(35),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Color(0xffC6C6C6),
              ),
            ),
          )
        ],
      );
    }
  }

  void addBooking() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(61), topLeft: Radius.circular(61))),
        builder: (context) {
          return Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(35),
                height: size.convert(context, 550),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Book a Service',
                            style: style.PoppinsSemiBold(fontSize: 23),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: squareButton(icon: Icons.close),
                          ),
                        ],
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(
                          'Fantasia Palace',
                          style: style.PoppinsRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              '4.5',
                              style: style.PoppinsRegular(
                                  fontSize: 14, color: Colors.black),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:
                              Text('When do you want to book for this service?',
                                  style: style.PoppinsSemiBold(
                                    fontSize: 14,
                                  ))),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        trailing: Icon(Icons.navigate_next),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: style.PoppinsRegular(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              '(Today) 26 Feb, 2021',
                              style: style.PoppinsRegular(
                                  fontSize: 14, color: Color(0xff5034a3)),
                            ),
                          ],
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          _showTimePicker();
                        },
                        contentPadding: EdgeInsets.all(0),
                        trailing: Icon(Icons.navigate_next),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Time',
                              style: style.PoppinsRegular(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              '(1hr 10min) 11:20 AM - 12:30 PM',
                              style: style.PoppinsRegular(
                                  fontSize: 14, color: Color(0xff5034a3)),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Select Staff',
                              style: style.PoppinsSemiBold(
                                fontSize: 14,
                              ))),
                      Padding(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:
                              ['Anyone', 'Anne', 'Mary', 'Joseph'].map((e) {
                            return Column(
                              children: [
                                SvgPicture.string(e == selectedBarber
                                    ? Constants.selectedBarberSvg
                                    : Constants.barberSvg),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  e,
                                  style: style.PoppinsRegular(
                                      fontSize: 11,
                                      color: Color(e == selectedBarber
                                          ? 0xff5034a3
                                          : 0xffABADB3)),
                                )
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
//                  SizedBox(height: 10,),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deluxe Manicure',
                              style: style.PoppinsSemiBold(
                                  fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              'N 10,000',
                              style: style.PoppinsSemiBold(
                                  fontSize: 14, color: Color(0xff5034a3)),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1.2,
                      ),
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Leave a note (optional)',
                            hintStyle: style.PoppinsRegular(
                                fontSize: 12, color: Color(0xffABADB3))),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add another service',
                        style: style.PoppinsRegular(
                            fontSize: 14, color: Color(0xff5034a3)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 75,
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                          onPressed: () {
                            // Navigator.pop(context);
                            selectBookingPayment();
                          },
                          style: TextButton.styleFrom(
                              backgroundColor: Color(0xff5034a3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              )),
                          child: Text(
                            'Book',
                            style: style.PoppinsRegular(
                                fontSize: size.convert(context, 16)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }

  void selectBookingPayment() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(61), topLeft: Radius.circular(61))),
        builder: (context) {
          return Wrap(
            children: [
              Container(
                padding: EdgeInsets.all(35),
                height: size.convert(context, 550),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'You are about to book for this service.',
                        style: style.PoppinsSemiBold(fontSize: 23),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        title: Text(
                          'By booking on handycraft, you agree to the processing of Your personal data',
                          style: style.PoppinsRegular(
                              fontSize: 12,
                              color: Color(0xff3F5B65),
                              height: 1.3),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'PAYMENT METHODS',
                          style: style.PoppinsSemiBold(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 7, right: 7, bottom: 7),
                                  child: Container(
                                    height: 60,
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: selectedPayment == 'Bank Card'
                                            ? Color(0xff5034a3).withOpacity(0.2)
                                            : Colors.white,
                                        border: Border.all(
                                            color: Color(0xff5034a3),
                                            width:
                                                selectedPayment == 'Bank Card'
                                                    ? 1.2
                                                    : 0.8)),
                                    child: Row(
                                      children: [
                                        SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" id="Img" width="40" height="23" viewBox="0 0 40 23"><defs><linearGradient id="linear-gradient" x2="1" y2="1" gradientUnits="objectBoundingBox"><stop offset="0" stop-color="#5034a3"/><stop offset="1"/></linearGradient><linearGradient id="linear-gradient-2" x2="1" y2="1" gradientUnits="objectBoundingBox"><stop offset="0" stop-color="#ff3a2a"/><stop offset="1" stop-color="#5034a3"/></linearGradient><linearGradient id="linear-gradient-3" x2="1" y2="1" gradientUnits="objectBoundingBox"><stop offset="0" stop-color="#ff3a2a"/><stop offset="1" stop-color="#ffd590"/></linearGradient></defs><g id="Artboard"><g id="Oval"><g id="Group-2"><g id="Group"><ellipse id="Oval-2" data-name="Oval" cx="20" cy="2.5" rx="20" ry="2.5" transform="translate(0 18)" fill="#5034a3" opacity="0.168"/><g id="card" transform="translate(5.308)"><path id="XMLID_114_" d="M27.26,20.9H1.6A1.6,1.6,0,0,1,0,19.3V1.6A1.6,1.6,0,0,1,1.6,0H27.26a1.6,1.6,0,0,1,1.6,1.6V19.3a1.6,1.6,0,0,1-1.6,1.6" transform="translate(0.166)" fill-rule="evenodd" fill="url(#linear-gradient)"/><rect id="XMLID_113_" width="29" height="4" transform="translate(-0.308 3)" fill="#5034a3"/><rect id="XMLID_113_2" data-name="XMLID_113_" width="29" height="3" transform="translate(-0.308 3)" fill="url(#linear-gradient-2)"/><path id="Combined-Shape" d="M12.785,19a.75.75,0,0,1,0,1.493H6.679a.75.75,0,0,1,0-1.493Zm9.138.746a.715.715,0,0,1-.679.746H15.138a.75.75,0,0,1,0-1.493h6.107A.715.715,0,0,1,21.923,19.746ZM7,22.483c.275,0,.5.334.5.746s-.222.746-.5.746H6.5c-.275,0-.5-.334-.5-.746s.222-.746.5-.746Zm4.727,0a.746.746,0,1,1,0,1.493H10.23a.746.746,0,1,1,0-1.493Zm2.737,0c.275,0,.5.334.5.746s-.222.746-.5.746h-.5c-.275,0-.5-.334-.5-.746s.222-.746.5-.746Zm3.732,0a.746.746,0,0,1,0,1.493H16.7a.746.746,0,1,1,0-1.493Zm2.164.037a.658.658,0,0,1,.915,0,.691.691,0,0,1,0,.945.667.667,0,0,1-.457.193.65.65,0,0,1-.457-.193.691.691,0,0,1,0-.945Z" transform="translate(-2.849 -9.546)" fill="#5034a3" fill-rule="evenodd"/><path id="Combined-Shape-2" data-name="Combined-Shape" d="M11.785,18a.75.75,0,0,1,0,1.493H5.679a.75.75,0,0,1,0-1.493Zm9.138.746a.715.715,0,0,1-.679.746H14.138a.75.75,0,0,1,0-1.493h6.107A.715.715,0,0,1,20.923,18.746ZM6,21.483c.275,0,.5.334.5.746s-.222.746-.5.746H5.5c-.275,0-.5-.334-.5-.746s.222-.746.5-.746Zm4.727,0a.746.746,0,1,1,0,1.493H9.23a.746.746,0,1,1,0-1.493Zm2.737,0c.275,0,.5.334.5.746s-.222.746-.5.746h-.5c-.275,0-.5-.334-.5-.746s.222-.746.5-.746Zm3.732,0a.746.746,0,1,1,0,1.493H15.7a.746.746,0,1,1,0-1.493Zm2.164.037a.658.658,0,0,1,.915,0,.691.691,0,0,1,0,.945.667.667,0,0,1-.457.193.65.65,0,0,1-.457-.193.691.691,0,0,1,0-.945Z" transform="translate(-2.346 -9.043)" fill="#fff" fill-rule="evenodd"/><rect id="XMLID_105_" width="6" height="4" rx="2" transform="translate(21.692 15)" fill="#6785df"/><rect id="XMLID_105_2" data-name="XMLID_105_" width="6" height="4" rx="2" transform="translate(20.692 15)" fill="url(#linear-gradient-3)"/></g></g></g></g></g></svg>'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Bank Card',
                                          style: style.PoppinsSemiBold(
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                selectedPayment == 'Bank Card'
                                    ? Positioned(
                                        top: 0,
                                        right: 0,
                                        child: SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21"><g id="Group_267" data-name="Group 267" transform="translate(-181 -371)"><circle id="Ellipse_25" data-name="Ellipse 25" cx="10.5" cy="10.5" r="10.5" transform="translate(181 371)" fill="#5034a3"/><path id="Icon_awesome-check" data-name="Icon awesome-check" d="M3.386,11.866.146,8.626a.5.5,0,0,1,0-.705l.705-.705a.5.5,0,0,1,.705,0L3.739,9.4,8.414,4.723a.5.5,0,0,1,.705,0l.705.705a.5.5,0,0,1,0,.705L4.091,11.866A.5.5,0,0,1,3.386,11.866Z" transform="translate(186.041 374.092) rotate(-7)" fill="#fff"/></g></svg>'))
                                    : Container(),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Container(
                                    height: 60,
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: selectedPayment == 'Pay Later'
                                            ? Color(0xff5034a3).withOpacity(0.2)
                                            : Colors.white,
                                        border: Border.all(
                                            color: Color(0xff5034a3),
                                            width:
                                                selectedPayment == 'Bank Card'
                                                    ? 1.2
                                                    : 0.8)),
                                    child: Row(
                                      children: [
                                        SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" width="32.833" height="25.166" viewBox="0 0 32.833 25.166"><g id="Group_258" data-name="Group 258" transform="translate(-225.167 -389.917)"><g id="credit-cards" transform="translate(225.167 386.25)"><path id="Path_1254" data-name="Path 1254" d="M23.833,82.333h-22A1.833,1.833,0,0,1,0,80.5V65.833A1.833,1.833,0,0,1,1.833,64h22a1.833,1.833,0,0,1,1.833,1.833V80.5A1.833,1.833,0,0,1,23.833,82.333Zm0,0" transform="translate(0 -60.333)" fill="#5034a3"/><path id="Path_1255" data-name="Path 1255" d="M0,144H25.667v3.667H0Zm0,0" transform="translate(0 -135.75)" fill="#ff3a2a"/><g id="Group_257" data-name="Group 257" transform="translate(3.667 16.5)"><path id="Path_1256" data-name="Path 1256" d="M64,288h2.75v1.833H64Zm0,0" transform="translate(-64 -288)" fill="#fff"/><path id="Path_1257" data-name="Path 1257" d="M144,288h3.667v1.833H144Zm0,0" transform="translate(-139.417 -288)" fill="#fff"/><path id="Path_1258" data-name="Path 1258" d="M240,288h3.667v1.833H240Zm0,0" transform="translate(-229.917 -288)" fill="#fff"/><path id="Path_1259" data-name="Path 1259" d="M336,288h2.75v1.833H336Zm0,0" transform="translate(-320.417 -288)" fill="#fff"/></g></g><g id="Ellipse_703" data-name="Ellipse 703" transform="translate(244 401.083)" fill="#5034a3" stroke="#fff" stroke-width="1"><circle cx="7" cy="7" r="7" stroke="none"/><circle cx="7" cy="7" r="6.5" fill="none"/></g><rect id="Rectangle_225" data-name="Rectangle 225" width="1" height="5" transform="translate(250 405)" fill="#fff"/><rect id="Rectangle_226" data-name="Rectangle 226" width="1" height="5" transform="translate(255 409) rotate(90)" fill="#fff"/></g></svg>'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Pay Later',
                                          style: style.PoppinsSemiBold(
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                selectedPayment == 'Pay Later'
                                    ? Positioned(
                                        top: 0,
                                        right: 0,
                                        child: SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21"><g id="Group_267" data-name="Group 267" transform="translate(-181 -371)"><circle id="Ellipse_25" data-name="Ellipse 25" cx="10.5" cy="10.5" r="10.5" transform="translate(181 371)" fill="#5034a3"/><path id="Icon_awesome-check" data-name="Icon awesome-check" d="M3.386,11.866.146,8.626a.5.5,0,0,1,0-.705l.705-.705a.5.5,0,0,1,.705,0L3.739,9.4,8.414,4.723a.5.5,0,0,1,.705,0l.705.705a.5.5,0,0,1,0,.705L4.091,11.866A.5.5,0,0,1,3.386,11.866Z" transform="translate(186.041 374.092) rotate(-7)" fill="#fff"/></g></svg>'))
                                    : Container(),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7),
                                  child: Container(
                                    height: 60,
                                    padding: EdgeInsets.all(13),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(9),
                                        color: selectedPayment ==
                                                'Pay on Location'
                                            ? Color(0xff5034a3).withOpacity(0.2)
                                            : Colors.white,
                                        border: Border.all(
                                            color: Color(0xff5034a3),
                                            width:
                                                selectedPayment == 'Bank Card'
                                                    ? 1.2
                                                    : 0.8)),
                                    child: Row(
                                      children: [
                                        SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" width="32.833" height="25.166" viewBox="0 0 32.833 25.166"><g id="Group_259" data-name="Group 259" transform="translate(-225.167 -389.917)"><g id="credit-cards" transform="translate(225.167 386.25)"><path id="Path_1254" data-name="Path 1254" d="M23.833,82.333h-22A1.833,1.833,0,0,1,0,80.5V65.833A1.833,1.833,0,0,1,1.833,64h22a1.833,1.833,0,0,1,1.833,1.833V80.5A1.833,1.833,0,0,1,23.833,82.333Zm0,0" transform="translate(0 -60.333)" fill="#5034a3"/><path id="Path_1255" data-name="Path 1255" d="M0,144H25.667v3.667H0Zm0,0" transform="translate(0 -135.75)" fill="#ff3a2a"/><g id="Group_257" data-name="Group 257" transform="translate(3.667 16.5)"><path id="Path_1256" data-name="Path 1256" d="M64,288h2.75v1.833H64Zm0,0" transform="translate(-64 -288)" fill="#fff"/><path id="Path_1257" data-name="Path 1257" d="M144,288h3.667v1.833H144Zm0,0" transform="translate(-139.417 -288)" fill="#fff"/><path id="Path_1258" data-name="Path 1258" d="M240,288h3.667v1.833H240Zm0,0" transform="translate(-229.917 -288)" fill="#fff"/><path id="Path_1259" data-name="Path 1259" d="M336,288h2.75v1.833H336Zm0,0" transform="translate(-320.417 -288)" fill="#fff"/></g></g><g id="Ellipse_703" data-name="Ellipse 703" transform="translate(244 401.083)" fill="#5034a3" stroke="#fff" stroke-width="1"><circle cx="7" cy="7" r="7" stroke="none"/><circle cx="7" cy="7" r="6.5" fill="none"/></g></g></svg>'),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Pay on Location',
                                          style: style.PoppinsSemiBold(
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                selectedPayment == 'Pay on Location'
                                    ? Positioned(
                                        top: 0,
                                        right: 0,
                                        child: SvgPicture.string(
                                            '<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21"><g id="Group_267" data-name="Group 267" transform="translate(-181 -371)"><circle id="Ellipse_25" data-name="Ellipse 25" cx="10.5" cy="10.5" r="10.5" transform="translate(181 371)" fill="#5034a3"/><path id="Icon_awesome-check" data-name="Icon awesome-check" d="M3.386,11.866.146,8.626a.5.5,0,0,1,0-.705l.705-.705a.5.5,0,0,1,.705,0L3.739,9.4,8.414,4.723a.5.5,0,0,1,.705,0l.705.705a.5.5,0,0,1,0,.705L4.091,11.866A.5.5,0,0,1,3.386,11.866Z" transform="translate(186.041 374.092) rotate(-7)" fill="#fff"/></g></svg>'))
                                    : Container(),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Payment Details',
                          style: style.PoppinsRegular(
                              fontSize: 15, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      bankDetailsTextField(hint: 'Cardholder name'),
                      bankDetailsTextField(
                          hint: 'Card Number',
                          suffixIcon: SvgPicture.string(
                              '<svg xmlns="http://www.w3.org/2000/svg" width="5" height="5" viewBox="-10 -10 40 40"><path id="padlock" d="M13.5,6H13V4A4,4,0,0,0,5,4V6H4.5A1.5,1.5,0,0,0,3,7.5v7A1.5,1.5,0,0,0,4.5,16h9A1.5,1.5,0,0,0,15,14.5v-7A1.5,1.5,0,0,0,13.5,6ZM6.333,4a2.667,2.667,0,0,1,5.333,0V6H6.333Zm3.333,7.148v1.519a.667.667,0,1,1-1.333,0V11.148a1.333,1.333,0,1,1,1.333,0Z" transform="translate(-3)" fill="#434343"/></svg>')),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: bankDetailsTextField(hint: 'Date'),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            flex: 2,
                            child: bankDetailsTextField(hint: 'CVV'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Deluxe Manicure  N 10,000',
                        style: style.PoppinsSemiBold(
                            fontSize: 17, color: Color(0xff5034a3)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Color(0xff5034a3), width: 0.8),
                                      borderRadius: BorderRadius.circular(18),
                                    )),
                                child: Text(
                                  'Cancel',
                                  style: style.PoppinsRegular(
                                      fontSize: size.convert(context, 16),
                                      color: Color(0xff5034a3)),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            child: Container(
                              height: 75,
                              width: MediaQuery.of(context).size.width,
                              child: TextButton(
                                onPressed: () {
                                  // Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: BookingSuccessScreen(),
                                          type: PageTransitionType.fade));
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xff5034a3),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    )),
                                child: Text(
                                  'Book',
                                  style: style.PoppinsRegular(
                                      fontSize: size.convert(context, 16)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }

  void _showTimePicker() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 15,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(61), topLeft: Radius.circular(61))),
        builder: (context) {
          return Container(
            height: 400,
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (val) {}),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 15),
                  child: Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff393737),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      child: Text(
                        'Set Time',
                        style: style.PoppinsRegular(
                            fontSize: size.convert(context, 16)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
