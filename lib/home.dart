import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inout_designer/notification.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _search = TextEditingController();

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44baf1),
      key: _drawerKey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(Icons.drag_handle),
                      onPressed: () {
                        _drawerKey.currentState.openDrawer();
                      }),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.notifications_none_sharp),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NotificationView()));
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/omar.jpg')),
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.red),
                      )
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 30, 25, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Omar',
                          style: TextStyle(
                              color: Color(0xFF363636),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Welcome Back',
                          style: TextStyle(
                              color: Color(0xFF363636),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto'),
                        ),
                        SizedBox(
                          height: 38,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[50],
                                    blurRadius: 2,
                                    spreadRadius: 5,
                                    offset: Offset(0, 0))
                              ]),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _search,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Search...',
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintStyle: TextStyle(
                                        color: Color(0xFFABABAB), fontSize: 18),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFF6262),
                                      borderRadius: BorderRadius.circular(6)),
                                  height: 50,
                                  width: 50,
                                  child: ImageIcon(
                                    AssetImage('assets/images/search.png'),
                                    color: Colors.white,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Category',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF363636)),
                            ),
                            InkWell(
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    color: Color(0xFF5E5D5D), fontSize: 18),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            category('assets/images/all.png', 'All',
                                '500 Creative', () {}),
                            category('assets/images/designs.png', 'Designs',
                                '300 Designers', () {}),
                            category('assets/images/photography.png',
                                'Photography', '200 Photographers', () {}),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top rate',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF363636)),
                            ),
                            InkWell(
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    color: Color(0xFF5E5D5D), fontSize: 18),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ListView.builder(
                            itemCount: 4,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (c, i) => GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.only(bottom: 18),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(4.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey[100],
                                              blurRadius: 2,
                                              spreadRadius: 4,
                                              offset: Offset(0, 0))
                                        ]),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/omar.jpg'),
                                          radius: 30,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Omar Waleed",
                                                style: TextStyle(
                                                    color: Color(0xFF363636),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Event Photography"
                                                        .toUpperCase(),
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFFABABAB)),
                                                  ),
                                                  SizedBox(
                                                    width: 6,
                                                  ),
                                                  buildOptions(
                                                      text: '4.0',
                                                      icon: Icons.star),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  buildOptions(
                                                      text: '200EGP',
                                                      icon: Icons.circle),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector category(
      String image, String label, String description, Function tap) {
    return GestureDetector(
      child: Container(
        height: 110,
        width: 90,
        decoration: BoxDecoration(
            color: Color(0xFF44BAF1), borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            Text(
              label,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFFD9FFFA).withOpacity(0.07058823529411765),
                  borderRadius: BorderRadius.circular(10)),
              height: 20,
              width: 60,
              child: Center(
                  child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 8),
              )),
            )
          ],
        ),
      ),
      onTap: tap,
    );
  }

  buildOptions({icon, text}) => Row(
        children: [
          Icon(
            icon,
            size: 14,
            color: Colors.yellow[500],
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 8,
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold),
          )
        ],
      );
}
