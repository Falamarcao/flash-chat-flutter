import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({this.sender, this.text, this.isMe});

  final String sender;
  final String text;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              sender,
              style: TextStyle(color: Colors.black54, fontSize: 12.0),
            ),
            Material(
                borderRadius: BorderRadius.only(
                  topLeft: isMe ? Radius.circular(30.0) : Radius.zero,
                  topRight: isMe ? Radius.zero : Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                elevation: 5.0,
                color: isMe ? Colors.blueAccent : Colors.white,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: isMe ? Colors.white : Colors.black,
                      fontSize: 15.0,
                    ),
                  ),
                )),
          ],
        ));
  }
}
