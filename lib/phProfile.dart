import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inout_designer/profile_screens/about.dart';
import 'package:inout_designer/profile_screens/reviews_screen.dart';
import 'package:inout_designer/profile_screens/works_screen.dart';
import 'notification.dart';

class Ph_Profile extends StatefulWidget {
  @override
  _Ph_ProfileState createState() => _Ph_ProfileState();
}

class _Ph_ProfileState extends State<Ph_Profile> {
  int selectedIndex = 0;
  List<Widget> screens = [
    WorkScreen(),
    AboutScreen(),
    ReviewsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.34,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.31,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xFF44baf1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(25, 40, 25, 35),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            child: IconButton(
                                icon: Icon(Icons.notifications_none_sharp),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              NotificationView()));
                                }),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/omar.jpg')),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Omar Waleed",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "Photography",
                                  style: TextStyle(
                                      color: Colors.grey[100], fontSize: 11),
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                buildRating()
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: (0),
                  right: (25),
                  child: Row(
                    children: [
                      buttonProfile(
                          'Follow', Color(0xFF4066EA), Colors.white, () {}),
                      SizedBox(
                        width: 7,
                      ),
                      buttonProfile(
                          'Contact', Colors.white, Color(0xFF4066EA), () {}),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTab(
                        text: "Work",
                        onTap: () {
                          selectedIndex = 0;
                          setState(() {});
                        },
                        active: selectedIndex == 0),
                    buildTab(
                        text: "About",
                        onTap: () {
                          selectedIndex = 1;
                          setState(() {});
                        },
                        active: selectedIndex == 1),
                    buildTab(
                        text: "Reviews",
                        onTap: () {
                          selectedIndex = 2;
                          setState(() {});
                        },
                        active: selectedIndex == 2),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: screens.elementAt(selectedIndex),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buttonProfile(String text, Color textColor,
          Color containerColor, Function function) =>
      GestureDetector(
        child: Container(
          height: 45,
          width: 81,
          decoration: BoxDecoration(
              color: containerColor, borderRadius: BorderRadius.circular(5)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: 13,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold),
          )),
        ),
        onTap: function,
      );

  buildTab({text, onTap, active}) => Padding(
        padding: EdgeInsets.all(16),
        child: InkWell(
            onTap: onTap,
            child: Text(
              text,
              style: TextStyle(
                  color: active ? Colors.black : Colors.grey[400],
                  decoration:
                      active ? TextDecoration.underline : TextDecoration.none,
                  fontSize: 15,
                  fontWeight: active ? FontWeight.bold : FontWeight.normal),
            )),
      );

  buildRating() => Row(
        children: [
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[700],
          ),
          Icon(
            Icons.star,
            color: Colors.white,
          ),
        ],
      );
}
