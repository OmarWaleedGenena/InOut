import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Container loginButton(Function onTap) {
  return Container(
    color: Colors.transparent,
    height: 50,
    width: 300,
    child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        onPressed: onTap,
        child: Center(
          child: Text(
            'LOGIN',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xFF4066EA)),
          ),
        )),
  );
}



Container textField(
    String text, bool secure, TextEditingController controller , TextInputType textInputType) {
  return Container(
    height: 50,
    width: 300,
    child: TextFormField(
      keyboardType: textInputType,
      controller: controller,
      obscureText: secure,
      style: TextStyle(
          fontSize: 16,
          fontFamily: 'Roboto',
          color: Color(0xFF4066EA),
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal),
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.369),
        filled: true,
        hintStyle:
            TextStyle(color: Colors.white, fontFamily: 'Roboto', fontSize: 14),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(30.0),
        ),
        hintText: text,
      ),
    ),
  );
}




GestureDetector connectToSocial(Function onTap , String imageConnect) => GestureDetector(
    onTap: onTap,
    child: Container(
      height: 57,
      width: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        image: DecorationImage(
          image: ExactAssetImage(imageConnect),
        ),
      ),
    ));



Padding registerImage() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(24, 26, 23, 0),
    child: Container(height: 217,width: 328,
      decoration: BoxDecoration(
        image: DecorationImage(image: ExactAssetImage('assets/images/register.png'),),
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  );
}





RichText registerBottomText(String freeText,String underlinedText , Function onTap) {
  return RichText(
    text: TextSpan(
        style: TextStyle(
            fontSize: 12,
            fontFamily: 'assets/fonts/Roboto-Regular.ttf',
            color: Colors.white),
        children: [
          TextSpan(text: freeText),
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap=(onTap),
              text: underlinedText,
              style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white)),
        ]),
  );
}