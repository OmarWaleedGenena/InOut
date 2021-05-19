import 'package:flutter/material.dart';
import 'package:inout_designer/chat_view/chat_controller.dart';
import 'chat_widgets/chat_input.dart';

class ChatView extends StatefulWidget {
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  ChatController controller;

  @override
  initState() {
    controller = ChatController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Color(0xFF44baf1)),
        title: Text(
          "Omar Waleed",
          style: TextStyle(color:Color(0xFF44baf1)),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.message.length,
                itemBuilder: (c, i) => controller.message[i].owner == 0
                    ? meMessage(controller.message[i].message)
                    : otherMessage(controller.message[i].message)),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            // padding: EdgeInsets.all(8),
            margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                  maxLines: 4,
                  minLines: 1,
                  onChanged: (val) {
                    if (val == "") controller.isTyping = false;
                    if (val != "") {
                      controller.isTyping = true;
                      controller.messageText = val;
                    }
                    if (val.trim().isEmpty) controller.isTyping = false;

                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(borderSide: BorderSide.none)),
                )),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.photo_camera_outlined),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                controller.isTyping
                    ? InkWell(
                        onTap: () {
                          controller.message.add(
                              Message(owner: 0, message: controller.messageText, id: 0));
                          setState(() {});
                          print("new message");
                        },
                        child: CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.send),
                        ),
                      )
                    : InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.mic),
                        ),
                      ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  meMessage(message) => Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 80, right: 8, bottom: 8, top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12)),
          color:Color(0xFF44baf1)),
      child: Text(message,style: TextStyle(color:Colors.white),));

  otherMessage(message) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, bottom: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/omar.jpg'),
              radius: 22,
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(right: 80, left: 8, bottom: 8, top: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                    color: Colors.white),
                child: Text(message,style: TextStyle(color: Color(0xFF44baf1)),)),
          ),
        ],
      );
}
