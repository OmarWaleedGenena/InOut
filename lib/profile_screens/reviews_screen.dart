import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (c, i) => InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(bottom: 18),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[100],
                          blurRadius: 2,
                          spreadRadius: 5,
                          offset: Offset(0, 0))
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/omar.jpg'),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Omar Waleed",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Photography",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                ],
                              ),
                              buildRating()
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed Omar Waleed ",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.blue[800]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),);
  }

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
          Icon(Icons.star,
  color: Colors.grey.shade300,),
        ],
      );
}
