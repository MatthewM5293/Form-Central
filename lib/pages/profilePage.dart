import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/global.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  bool _isDarkMode = true;

  @override
  void initState() {
    super.initState();
    DarkMode.getDarkMode().then((value) {
      setState(() {
        _isDarkMode = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light);
    int _currentIndex = 4;
    return MaterialApp(
        theme: themeData,
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                isSelected: _isDarkMode,
                onPressed: () {
                  setState(() {
                    DarkMode.setDarkMode(_isDarkMode!);
                    // _isDarkMode = !_isDarkMode; //change mode
                  });
                },
                icon: const Icon(Icons.wb_sunny_outlined),
                selectedIcon: const Icon(Icons.brightness_2_outlined),
              ),
            ],
            title: const Row(
              children: [
                Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/SNice.svg/1200px-SNice.svg.png"),
                    height: 45,
                    width: 45),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                Text("Form Profile"),
              ],
            ),
            centerTitle: true,
            backgroundColor: Colors.deepOrange,
          ),
        ));
  }
}
