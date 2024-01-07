import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'None clicked';
  GlobalKey<ScaffoldState> drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        key: drawerKey,
        endDrawer: Drawer(),
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Rent car',
              icon: Icon(Icons.car_rental),
            ),
            Tab(
              text: 'Hotels',
              icon: Icon(Icons.hotel_class),
            ),
            Tab(
              text: 'Room service',
              icon: Icon(Icons.room_service_rounded),
            ),
          ]),
          actions: [
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Notifications Clicked';
                });
              },
              icon: Icon(Icons.notifications),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Casting Clicked';
                });
              },
              icon: Icon(Icons.cast),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  text = 'Search Clicked';
                });
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              splashRadius: 30,
              onPressed: () {
                setState(() {
                  drawerKey.currentState!.openEndDrawer();
                });
              },
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ethan.png'),
              ),
            ),
          ],
          backgroundColor: Colors.blueGrey,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(image: AssetImage('assets/images/logo.png')),
          ),
          title: const Text('Flutter'),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text('Rent Car'),
            ),
            Center(
              child: Text('Booking a hotel'),
            ),
            Center(
              child: Text('Room service'),
            ),
          ],
        ),
      ),
    );
  }
}
