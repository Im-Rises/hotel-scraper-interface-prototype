import 'package:flutter/material.dart';
import 'package:hotel_scraper_interface/rooms/room_view.dart';
import 'package:hotel_scraper_interface/rooms/rooms_class.dart';
import 'package:hotel_scraper_interface/tools/list_view_builder.dart';

class RoomsScreen extends StatelessWidget {
  const RoomsScreen({Key? key}) : super(key: key);

  static List<Room> roomList = [
    Room(
      name: '102',
      state: 'ok',
      alertStatus: 'resolved',
      events: [
        RoomEvent(
            date: DateTime.parse('2022-04-01 22:00:00Z'), description: 'Cough'),
        RoomEvent(
            date: DateTime.parse('2022-04-01 23:00:00Z'), description: 'Cry'),
      ],
    ),
    Room(
      name: '103',
      state: 'alert',
      alertStatus: 'alert',
      events: [
        RoomEvent(date: DateTime.now(), description: 'Cough'),
      ],
    ),
    Room(name: '104', state: 'ok', alertStatus: 'resolved', events: []),
    Room(name: '105', state: 'ok', alertStatus: 'resolved', events: []),
    Room(
        name: '106',
        state: 'alert',
        alertStatus: 'onInvestigation',
        events: []),
    Room(name: '107', state: 'ok', alertStatus: 'resolved', events: []),
  ];

  Widget _buildRoom(BuildContext context, Room room) {
    return ListTile(
      title: Text('Chambre ' + room.name),
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
