import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/callspage.dart';
import 'package:whatsapp_ui/pages/chat.dart';
import 'package:whatsapp_ui/pages/status_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tab;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: "CHATS"),
    Tab(text: "STATUS"),
    Tab(text: "CALLS"),
  ];

  @override
  void initState() {
    _tab = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          //IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),

          PopupMenuButton<String>(
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("New group"), value: "New Group"),
                  PopupMenuItem(
                      child: Text("New Broadcast"), value: "New Broadcast"),
                  PopupMenuItem(
                      child: Text("WhatsApp Web"), value: "WhatsApp Web"),
                  PopupMenuItem(
                      child: Text("Starred Messages"),
                      value: "Starred Messages"),
                  PopupMenuItem(child: Text("Setting"), value: "Setting"),
                ];
              })
        ],
        bottom: TabBar(
          controller: _tab,
          indicatorColor: Colors.white,
          tabs: topTabs,
        ),
      ),
      body: TabBarView(
        controller: _tab,
        children: [
          Text("Camera"),
          Chatpage(),
          StatusPage(),
          CallPage(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }

  // _getFAB() {
  //   // ignore: unrelated_type_equality_checks
  //   if (_tab == 1) {
  //     return FloatingActionButton(
  //       onPressed: () {},
  //    backgroundColor: Theme.of(context).accentColor,
  // child: Icon(
  //   Icons.message,
  //   color: Colors.white,
  // ),
  //     );
  //   }
  // }
}
