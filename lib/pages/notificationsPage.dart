import 'dart:convert'; //JSON

import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/customWidgets.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:http/http.dart' as http;

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<StatefulWidget> createState() => _NotificationsPage();
}

class _NotificationsPage extends State<NotificationsPage> {
  bool _isDarkMode = true;
  String? _quote = "";

  @override
  void initState() {
    super.initState();
    DarkMode.getDarkMode().then((value) {
      setState(() {
        _isDarkMode = value;
      });
    });
    Kanye.getQuote().then((value) {
      setState(() {
        _quote = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light);

    //set quote
    // setQuote() {
    //   final stringFuture = getQuote().then((string) => {_quote = string});
    // }

    return MaterialApp(
      theme: themeData,
      title: "Kanye",
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
                      "https://imageio.forbes.com/specials-images/imageserve/5ed00f17d4a99d0006d2e738/0x0.jpg?format=jpg&crop=4666,4663,x154,y651,safe&height=416&width=416&fit=bounds"),
                  height: 45,
                  width: 45),
              Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
              Text("Kanye"),
            ],
          ),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(_quote!),
          ),
          reusableButtonWidget(context, "Get New Quote", () {
            setState(() {
              final stringFuture = getQuote().then((value) {
                setState(() {
                  _quote = value;
                });
              });
            });
          }, 10, 0, 0, 0)
        ]),
      ),
    );
  }
}

getQuote() async {
  var url = Uri.https('api.kanye.rest');
  var response = await http.get(url);
  // var body = response.body.toString();
  var data = jsonDecode(response.body);

  print(data["quote"]);

  return data['quote'];
}
