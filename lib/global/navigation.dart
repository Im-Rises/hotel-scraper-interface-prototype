import 'package:flutter/material.dart';

class LipsterNavigation extends StatelessWidget {
  const LipsterNavigation(
      {required this.navBarTapCallBack,
      required this.currentRouteIndex,
      Key? key})
      : super(key: key);

  final void Function(int) navBarTapCallBack;
  final int currentRouteIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.5),
      showUnselectedLabels: false,
      selectedFontSize: 14,
      unselectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentRouteIndex,
      items: const [
        BottomNavigationBarItem(
          label: 'Hotels',
          icon: Icon(Icons.hotel),
        ),
        BottomNavigationBarItem(
          label: 'Map',
          icon: Icon(Icons.map),
        ),
        BottomNavigationBarItem(
          label: 'Statistiques',
          icon: Icon(Icons.graphic_eq),
        ),

      ],
      onTap: navBarTapCallBack,
    );
  }
}
