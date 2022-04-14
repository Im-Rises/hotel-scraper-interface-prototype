import 'package:flutter/material.dart';
import 'package:hotel_scraper_interface/rooms/rooms_class.dart';

import '../tools/list_view_builder.dart';

class RoomView extends StatelessWidget {
  const RoomView({required this.room, Key? key}) : super(key: key);
  final Room room;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chambre ${room.name}'),
      ),
      body: buildFromList(context, room.events, _builderRoom),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _builderRoom(context, room) {
      return ListTile(
        title: Text(
            '${room.description} - ${room.date}'),
      );
  }

  Widget _buildFloatingActionButton() {
    if (room.alertStatus == 'onInvestigation' || room.alertStatus == 'alert') {
      return FloatingActionButton(
        onPressed: () {
          // nothing
        },
        child: const Icon(Icons.done),
      );
    }
    return Container();
  }
}
