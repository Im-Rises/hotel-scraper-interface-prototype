import 'package:flutter/material.dart';
import 'package:hotel_scraper_interface/menu/menu.dart';
import 'package:hotel_scraper_interface/global/navigation.dart';
import 'package:hotel_scraper_interface/reports/reports.dart';
import 'package:hotel_scraper_interface/rooms/rooms.dart';
import 'package:hotel_scraper_interface/Maps/maps.dart';

class LipsterAdminApp extends StatelessWidget {
  const LipsterAdminApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lipster Admin App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue,
          secondary: const Color.fromARGB(255, 228, 197, 60),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LipsterAdminHomePage(title: 'hotel-scraper'),
      },
    );
  }
}

class LipsterAdminHomePage extends StatefulWidget {
  const LipsterAdminHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LipsterAdminHomePage> createState() => _LipsterAdminHomePageState();
}

class _LipsterAdminHomePageState extends State<LipsterAdminHomePage> {
  int _selectedIndex = 0;

  List<Widget> _navPageOptions = <Widget>[
    RoomsScreen(),
    Maps(),
    // EventScreen(),
    MenuScreen(),
    ReportsScreen(),
  ];

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _navPageOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: LipsterNavigation(
        navBarTapCallBack: _onNavBarTapped,
        currentRouteIndex: _selectedIndex,
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

void main() {
  runApp(const LipsterAdminApp());
}
