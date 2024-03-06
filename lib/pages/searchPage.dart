import 'package:flutter/material.dart';
import 'package:formcentral/customWidgets/global.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    return MaterialApp(
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
              Text("Form Search"),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
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
            return List.empty();
          }),
        ),
      ),
    );
  }
}
