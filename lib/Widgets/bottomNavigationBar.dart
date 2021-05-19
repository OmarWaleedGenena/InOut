import 'package:flutter/material.dart';
import 'package:inout_designer/home.dart';
import 'package:inout_designer/phProfile.dart';
import 'package:inout_designer/messages.dart';
class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex=0;
  final tabs=[
    Home(),
    Messages(),
    Center(child: Text('aaa'),),
    Ph_Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //0xFF44baf1
      backgroundColor: Color(0xFFF6F6F6) ,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){setState(() {
          _currentIndex=index;
        });},
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF4066EA),
        unselectedItemColor: Color(0xFFC9D1D4) ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),title: Text('Messages')),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/services.png')),title: Text('Services')),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/profile.png')),title: Text('Account')),
        ],
      ),
    );
  }
}
