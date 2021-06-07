import 'package:flutter/material.dart';
import 'package:whatsapp_ui/models/status_model.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey,
            //backgroundImage: AssetImage(statusData[index].avatar),
          ),
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Recent Updates",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
            itemCount: statusData.length,
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: AssetImage(statusData[index].avatar),
                  ),
                  title: Text(
                    statusData[index].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statusData[index].time,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                Divider(
                  height: 10.0,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
