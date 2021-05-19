import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Widgets/bottomNavigationBar.dart';
import 'Widgets/widget.dart';
import 'package:inout_designer/signUp.dart';
// ignore: must_be_immutable
class Login extends StatelessWidget {
  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44baf1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              registerImage(),
              SizedBox(height: 21,),
              Text(
                'Lorem ipsum dolor sit amet, consectetur \n adipiscing elit, sed do eiusmod tempor ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white, fontSize: 14, fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 60,
              ),
              textField(
                  'Email Address', false, _email, TextInputType.emailAddress),
              SizedBox(
                height: 20,
              ),
              textField('Password', true, _password, TextInputType.text),
              SizedBox(
                height: 20,
              ),
              loginButton(() {Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (BuildContext context) => BottomNavBar()));}),
              Padding(
                padding:
                    EdgeInsets.only(right: 37, top: 24, left: 227, bottom: 37),
                child: InkWell(
                  onTap: (){},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Roboto'),
                  ),
                ),
              ),
              Text(
                'or login with',
                style: TextStyle(
                    color: Colors.white, fontSize: 12, fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 23,
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
              registerBottomText('Don’t have an account? ','Register now',(){Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (BuildContext context) => SignUp()));}),
            ],
          ),
        ),
      ),
    );
  }


}
