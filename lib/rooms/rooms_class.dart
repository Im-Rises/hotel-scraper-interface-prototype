import 'package:flutter/material.dart';

class RoomEvent {
  RoomEvent({
    required this.date,
    required this.description,
  });

  final DateTime date;
  final String description;
}

class Room {
  Room({
    required this.name,
    required this.state,
    required this.alertStatus,
    required this.events,
  });

  final String name;
  final String state;
  final String alertStatus;
  final List<RoomEvent> events;

  @override
  String toString() {
    return 'Room instance: $name $state $alertStatus';
  }

  IconData getIcon() {
    if (state == 'ok') {
      return Icons.done;
    }
    return Icons.hotel;
  }

  Color getColor() {
    if (alertStatus == 'alert') {
      return Colors.red;
    } else if (alertStatus == 'onInvestigation') {
      return Colors.orange;
    }
    return Colors.grey;
  }
}
