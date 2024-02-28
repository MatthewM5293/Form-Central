import 'package:flutter/material.dart';
import 'package:formcentral/pages/createFormPage.dart';
import 'package:formcentral/pages/homePage.dart';
import 'package:formcentral/pages/notificationsPage.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
              Text("Form Search"),
            ],
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchAnchor(
              builder: (BuildContext context, SearchController controller) {
            return SearchBar(
                controller: controller,
                padding: const MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0)),
                onTap: () {
                  controller.openView();
                },
                onChanged: (_) {
                  controller.openView();
                },
                leading: const Icon(Icons.search));
          }, suggestionsBuilder:
                  (BuildContext context, SearchController controller) {
            return List<ListTile>.generate(5, (int index) {
              final String item = 'form $index';
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    controller.closeView(item);
                  });
                },
              );
            });
          }),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 1,
            onTap: (value) => {
                  if (value == 0)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
                    }
                  else if (value == 2)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateFormPage()))
                    }
                  else if (value == 3)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NotificationsPage()))
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
