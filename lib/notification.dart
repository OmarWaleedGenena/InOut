import 'package:flutter/material.dart';

class NotificationView extends StatefulWidget {
  @override
  _NotificationViewState createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('Notification',style: TextStyle(color: Color(0xFF44BAF1),fontSize: 15,fontWeight: FontWeight.w700),)),
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_sharp,color: Color(0xFF44BAF1),), onPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:16.0),
        child: ListView.builder(
          itemCount: 18,
          itemBuilder: (c, i) => GestureDetector(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 76,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:10.0,left: 10.0),
                    child:Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('assets/images/omar.jpg'),
                                radius: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Omar Waleed",
                                      style: TextStyle(
                                          color: Color(0xFF363636),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Sound goods.",maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '16:00',
                          style: TextStyle(fontSize: 14, color: Color(0xFF717172)),
                        ),
                      ],
                    )
                  ),
                  Divider(color: Colors.black,thickness: 1.0,)
                ],
              ),

            ),
          ),
        ),
      ),
    );
  }
}
