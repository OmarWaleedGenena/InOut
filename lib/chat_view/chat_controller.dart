class ChatController {
  bool isTyping = false;
  String messageText = "";

  List<Message> message = [
    Message(id: 0, message: "hi how are you", owner: 0),
    Message(id: 1, message: "fine good , and you", owner: 1),
    Message(id: 2, message: "??", owner: 1),
    Message(id: 3, message: ".......", owner: 0),
    Message(id: 4, message: "3amel eh", owner: 1),
    Message(id: 5, message: "fire man!", owner: 0),
    Message(id: 6, message: "hhhhhhhhhhhh", owner: 0),
    Message(id: 7, message: "MASHYYYYYYYYYYYYYYYYYYY", owner: 0),
    Message(id: 8, message: "RAMADAN KAREEM", owner: 1),
    Message(id: 9, message: "Omar Waleed", owner: 0),
    Message(
        id: 10,
        message:
            "LOREAM EPSOM LOREAM EPSOM LOREAM EPSOM LOREAM EPSOMLOREAM EPSOM LOREAM EPSOM LOREAM EPSOM LOREAM EPSOM LOREAM EPSOM",
        owner: 1),
    Message(id: 33, message: "OK BYE", owner: 0),
    Message(id: 65, message: "bYE", owner: 1),
    Message(id: 110, message: "3AYEZ 7AGA", owner: 0),
    Message(id: 130, message: "LA SHOKRANAAAN", owner: 1),
    Message(id: 200, message: ">3>3", owner: 1),
  ];
}

class Message {
  int id, owner;
  String message;

  Message({this.id, this.owner, this.message});

  // Message.fromJson()
}
