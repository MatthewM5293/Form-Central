import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //app name
      title: "Form Central",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
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
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: const [
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
              icon: Icon(Icons.notifications), label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile"),
        ]),
      ),
    );
  }
}
