import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/database.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:formcentral/model/user.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePage();
}

class _ProfilePage extends State<ProfilePage> {
  bool _isDarkMode = true;
  User? user = null;

  @override
  void initState() {
    super.initState();
    DarkMode.getDarkMode().then((value) {
      setState(() {
        _isDarkMode = value;
      });
    });
  }

  _loadUser() async {
    // user = Database.GetUserFromDB(1);
  }

  @override
  Widget build(BuildContext context) {
    // Database.AddUserToDB(User(
    //     username: "JeffTheKilla",
    //     email: "test@email.com",
    //     firstName: "firstName",
    //     lastName: "lastName",
    //     password: "password",
    //     joinDate: DateTime.now(),
    //     profilePictureURL:
    //         "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg"));
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light);
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
                  _isDarkMode = !_isDarkMode; //change mode
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
        body: user != null
            ? Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Display user information as needed
                    Text(
                      '${user!.firstName} ${user!.lastName}',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '@${user!.username}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Email: ${user!.email}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Join Date: ${user!.joinDate != null ? user!.joinDate!.toLocal().toString() : "N/A"}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
