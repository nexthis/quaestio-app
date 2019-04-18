import 'package:flutter/material.dart';

import './screens/profile.dart';
import './screens/quest.dart';
import './screens/map.dart';

void main() => runApp(new MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  int _selectedTab = 1;
  final _pageOptions = [
      QuestTest(),
      MapTest(),
      ProfileTest(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.teal[700],
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quaestio'),
          ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.queue),
              title: Text('Zadania'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Mapa'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('Konto'),
            ),
          ],
        ),
      ),
    );
  }}