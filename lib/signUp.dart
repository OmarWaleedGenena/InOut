import 'package:flutter/material.dart';
import 'package:inout_designer/login.dart';
import 'Widgets/widget.dart';
// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  TextEditingController _fullName=TextEditingController();
  TextEditingController _emailAddress=TextEditingController();
  TextEditingController _mobileNumber=TextEditingController();
  TextEditingController _city=TextEditingController();
  TextEditingController _password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44baf1),
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            registerImage(),
            SizedBox(height: 30,),
            textField('Full Name', false, _fullName, TextInputType.text),
            SizedBox(height: 20,),
            textField('Email Address', false, _emailAddress, TextInputType.emailAddress),
            SizedBox(height: 20,),
            textField('Mobile Number', false, _mobileNumber, TextInputType.phone),
            SizedBox(height: 20,),
            textField('City, Country', false, _city, TextInputType.streetAddress),
            SizedBox(height: 20,),
            textField('Password', true, _password, TextInputType.text),
            SizedBox(height: 20,),
            loginButton((){}),
            SizedBox(height: 36,),
            Text(
              'or login with',
              style: TextStyle(
                  color: Colors.white, fontSize: 12, fontFamily: 'Roboto'),
            ),
            SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                connectToSocial(() {}, 'assets/images/gmail.png'),
                SizedBox(
                  width: 19,
                ),
                connectToSocial(() {}, 'assets/images/facebook.png'),
                SizedBox(
                  width: 19,
                ),
                connectToSocial(() {}, 'assets/images/twitter.png'),
              ],
            ),
            SizedBox(
              height: 33,
            ),
            registerBottomText('Already have an account? ','Sign in',(){Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (BuildContext context) => Login()));}),
            SizedBox(height: 20,),
          ],
        ),
      )),
    );
  }
}
