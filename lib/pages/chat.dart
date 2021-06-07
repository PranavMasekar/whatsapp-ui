import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/chat_model.dart';

import 'chat_detail_page.dart';

class Chatpage extends StatefulWidget {
  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage(chatData[index].avatar),
            ),
            title: Text(
              chatData[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chatData[index].msg,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            trailing: Text(
              chatData[index].time,
              style: TextStyle(color: Colors.grey, fontSize: 14.0),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChatDetailPage()));
            },
          ),
        ],
      ),
    );
  }
}
