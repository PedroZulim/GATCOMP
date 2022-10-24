import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application/pages/statistics_page.dart';

import 'activities_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';
import 'publish_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int CurrentIndex = 0;
  final screens = [
    ActivitiesPage(),
    StatisticsPage(),
    PublishPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: CurrentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 30,
          currentIndex: CurrentIndex,
          onTap: (index) => setState(() => CurrentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.feed),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
