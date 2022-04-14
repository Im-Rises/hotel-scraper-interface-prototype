import 'package:flutter/material.dart';
import 'package:hotel_scraper_interface/rooms/room_view.dart';
import 'package:hotel_scraper_interface/rooms/rooms_class.dart';
import 'package:hotel_scraper_interface/tools/list_view_builder.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  static List<Room> roomList = [
    Room(
      name: 'Moris Grands Boulevards',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(date: '2022-06-11', description: 'start date'),
        RoomEvent(date: '2022-06-12', description: 'end date'),
      ],
    ),
    Room(
      name: 'Hôtel de Banville',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(date: '2022-06-11', description: 'start date'),
        RoomEvent(date: '2022-06-12', description: 'end date'),
      ],
    ),
    Room(
      name: 'Grand Hôtel Amelot',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(date: '2022-06-11', description: 'start date'),
        RoomEvent(date: '2022-06-12', description: 'end date'),
      ],
    ),
    Room(
      name: 'hotelF1 Paris Porte de Châtillon',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(date: '2022-06-11', description: 'start date'),
        RoomEvent(date: '2022-06-12', description: 'end date'),
      ],
    ),
    Room(
      name: 'Grand Hotel Francais',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(date: '2022-06-11', description: 'start date'),
        RoomEvent(date: '2022-06-12', description: 'end date'),
      ],
    )
  ];

  Widget _buildRoom(BuildContext context, Room room) {
    return ListTile(
      title: Text(room.name),
      trailing: Icon(
        room.getIcon(),
        color: room.getColor(),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute<void>(builder: (context) {
          return RoomView(room: room);
        }));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildFromList(context, roomList, _buildRoom);
  }
}
