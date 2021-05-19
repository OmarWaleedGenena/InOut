import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44baf1),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(25, 54, 25, 25),
              child: Image.asset(
                'assets/images/splash.png',
                height: 401,
                width: 325,
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height * 0.41,
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose The Creative You Want',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        color: Color(0xFF1A4C71)),
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Text(
                    'Now it\'s so easy to Find and Hire the best \n Designers and Photographers!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF222222),
                      fontFamily: 'Roboto',
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 53,
                  ),
                  Container(
                      color: Colors.transparent,
                      height: 48,
                      width: 240,
                      child: RaisedButton(
                        color: Color(0xFF4066EA),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        onPressed: (){Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (BuildContext context) => Login()));},
                        child: Center(
                          child: Text(
                            'GET STARTED',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
