import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/database.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:formcentral/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MainApp(currentIndex: 0));
}

class MainApp extends StatefulWidget {
  int currentIndex;
  MainApp({super.key, required this.currentIndex});

  @override
  State<StatefulWidget> createState() => _MainApp();
}

class _MainApp extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (value) => setState(() {
                  _currentIndex = value;
                }),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                  backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                  backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: "Create",
                  backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.format_quote),
                  label: "Kanye",
                  backgroundColor: Colors.deepOrange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: "Profile",
                  backgroundColor: Colors.deepOrange),
            ]),
        body: Pages.pageList.elementAt(_currentIndex),
      ),
    );
  }
}
