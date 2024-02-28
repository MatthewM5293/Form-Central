import 'package:flutter/material.dart';
import 'package:formcentral/pages/createFormPage.dart';
import 'package:formcentral/pages/homePage.dart';
import 'package:formcentral/pages/searchPage.dart';
import 'package:http/http.dart' as http;

class NotificationsPage extends StatefulWidget {
  String? quote;
  NotificationsPage({super.key, this.quote});

  @override
  State<StatefulWidget> createState() => _NotificationsPage();
}

class _NotificationsPage extends State<NotificationsPage> {
  String? _quote;

  //set quote
  setQuote() {
    final stringFuture = getQuote().then((string) => {_quote = string});
  }

  @override
  Widget build(BuildContext context) {
    setQuote();
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      title: "Kanye",
      home: Scaffold(
        appBar: AppBar(
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
          centerTitle: true,
        ),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Text(_quote!),
        )),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 3,
            onTap: (value) => {
                  if (value == 1)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchPage()))
                    }
                  else if (value == 2)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateFormPage()))
                    }
                  else if (value == 0)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
                    }
                },
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
                  icon: Icon(Icons.notifications), label: "Notifications"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle), label: "Profile"),
            ]),
      ),
    );
  }
}

Future<String> getQuote() async {
  var url = Uri.https('api.kanye.rest');

  var response = await http.get(url);
  var body = response.body.toString();

  return body;
}
