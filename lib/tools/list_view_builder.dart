import 'package:flutter/material.dart';

ListView buildFromList(BuildContext context, List items, Function tileBuilder) {
  if (items.isNotEmpty) {
    return ListView.builder(
      itemCount: items.length * 2 - 1,
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider();
        }

        final index = i ~/ 2;
        return tileBuilder(context, items[index]);
      },
    );
  }
  return ListView();
}
