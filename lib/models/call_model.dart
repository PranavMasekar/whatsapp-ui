import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final Icon callType;
  final String avatar;

  CallModel({
    required this.name,
    required this.time,
    required this.avatar,
    required this.callType,
  });
  static Icon call = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callmised = Icon(
    Icons.call_received,
    size: 18,
    color: Colors.red,
  );
}

List<CallModel> callData = [
  CallModel(
    name: "Dron",
    time: "10.30",
    callType: CallModel.call,
    avatar: "images/dron2.jpeg",
  ),
  CallModel(
    name: "Ajinkya",
    time: "3.30",
    callType: CallModel.callmised,
    avatar: "images/ajinkya.jpeg",
  ),
  CallModel(
    name: "Luffy",
    time: "10.45",
    callType: CallModel.call,
    avatar: "images/luffy.jpeg",
  ),
  CallModel(
    name: "Ace",
    time: "12.54",
    callType: CallModel.callmised,
    avatar: "images/ace.jpeg",
  ),
];
