class StatusModel {
  final String name;
  final String time;
  final String avatar;

  StatusModel({
    required this.name,
    required this.time,
    required this.avatar,
  });
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Dron",
    time: "10.30",
    avatar: "images/dron2.jpeg",
  ),
  StatusModel(
    name: "Ajinkya",
    time: "3.30",
    avatar: "images/ajinkya.jpeg",
  ),
  StatusModel(
    name: "Luffy",
    time: "10.45",
    avatar: "images/luffy.jpeg",
  ),
  StatusModel(
    name: "Ace",
    time: "12.54",
    avatar: "images/ace.jpeg",
  ),
];
