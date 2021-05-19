import 'package:flutter/material.dart';

import '../chat_controller.dart';

class ChatInput extends StatefulWidget {
  ChatController controller = ChatController();

  @override
  _ChatInputState createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(
            maxLines: 4,
            minLines: 1,
            onChanged: (val) {
              if (val == "") widget.controller.isTyping = false;
              if (val != "") widget.controller.isTyping = true;
              if (val.trim().isEmpty) widget.controller.isTyping = false;

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
          widget.controller.isTyping
              ? InkWell(
                  onTap: () {
                    widget.controller.message.add(Message(
                      owner: 0,
                      message: "new message",
                      id: 0
                    ));
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
    );
  }
}
