import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  get index => int;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            titleSpacing: 0,
            title: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/icon.png"),
                )
              ],
            ),
            actions: [
              IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
              IconButton(icon: Icon(Icons.call), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ]),
        body: Column(
          children: [
            Expanded(child: Text('')),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black54,
                    size: 35,
                  ),
                  Flexible(
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.0),
                          ),
                          hintText: "Type a message"),
                    ),
                  ),
                  // Icon(
                  //   Icons.insert_emoticon,
                  //   size: 30,
                  //   color: Colors.black,
                  // ),
                  Icon(
                    Icons.send,
                    size: 30,
                  )
                ],
              ),
            )
          ],
        ));
  }
}
