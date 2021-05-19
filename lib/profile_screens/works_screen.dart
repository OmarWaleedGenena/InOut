import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (c, i) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/photo.jpg'),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.only(bottom: 25),
            height: 175,
            width: MediaQuery.of(context).size.width,
          );
        });
  }
}
