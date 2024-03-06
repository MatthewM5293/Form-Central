import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
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
    printMode(_isDarkMode);
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light);
    return MaterialApp(
      title: "Form Central",
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              isSelected: _isDarkMode,
              onPressed: () {
                setState(() {
                  DarkMode.setDarkMode(_isDarkMode);
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
              Text("Form Central"),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: const Card(
          color: Colors.deepOrange,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                Image(
                    image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/SNice.svg/1200px-SNice.svg.png"),
                    height: 20,
                    width: 20),
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                Text(
                  "Temp",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                Text(
                    "Desc will go here but for now it will just be Hello World!")
              ],
            )
          ]),
        ),
      ),
    );
  }
}

printMode(bool isDarkMode) {
  print(isDarkMode);
}
