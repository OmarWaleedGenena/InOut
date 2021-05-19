import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBox(height: 27,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildExpanded('clients','150'),
          SizedBox(width: 25,),
          buildExpanded('reviews','125'),
        ],),
        SizedBox(height: 30,),
        Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF363636)),),
        SizedBox(height: 22,),
        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. ',style: TextStyle(color: Color(0xFF363636),fontSize: 15),),
        SizedBox(height: 36,),
        Text('Location',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF363636)),),
        SizedBox(height: 22,),
        Row(children: [
          Icon(Icons.location_on,color: Color(0xFFFFC71C),),
          SizedBox(width: 6,),
          Text('Mansoura, Egypt',style: TextStyle(color: Color(0xFF363636),fontSize: 15),)
        ],)
    ],
    );
  }

  Expanded buildExpanded(String text1,String text2) => Expanded(child: Container(decoration: BoxDecoration(color: Color(0xFF44BAF1),borderRadius: BorderRadius.circular(8)),height: 65,child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [Padding(
    padding: const EdgeInsets.only(top: 6,left: 6),
    child: Text(text1,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white),textAlign: TextAlign.start,),
  ),Center(child: Text(text2,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),)],),));
}
