import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/call_model.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage(callData[index].avatar),
            ),
            title: Text(
              callData[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Container(
                  child: callData[index].callType,
                ),
                Text(
                  callData[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            trailing: Icon(
              Icons.call,
              color: Theme.of(context).primaryColor,
              size: 25,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
