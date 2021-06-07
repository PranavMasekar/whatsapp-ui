class ChatModel {
  final String name;
  final String msg;
  final String time;
  final String avatar;

  ChatModel(
      {required this.name,
      required this.msg,
      required this.time,
      required this.avatar});
}

List<ChatModel> chatData = [
  ChatModel(
    name: "Dron",
    msg: "Dron Op",
    time: "10.30",
    avatar: "images/dron2.jpeg",
  ),
  ChatModel(
      name: "Ajinkya",
      msg: "Code With Ajinkya",
      time: "3.30",
      avatar: "images/ajinkya.jpeg"),
  ChatModel(
      name: "Luffy",
      msg: "Gomu Gomu No Mi",
      time: "10.45",
      avatar: "images/luffy.jpeg"),
  ChatModel(
      name: "Ace",
      msg: "Mera Mera No Mi",
      time: "12.54",
      avatar: "images/ace.jpeg"),
 
];
