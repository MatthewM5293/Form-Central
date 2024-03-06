import 'package:flutter/material.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:formcentral/customWidgets/customWidgets.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:formcentral/models/formModel.dart';
import 'package:formcentral/models/userModel.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<StatefulWidget> createState() => _CreateFormPage();
}

class _CreateFormPage extends State<CreateFormPage> {
  String title = "";
  String description = "";
  bool _isDarkMode = true;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

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
  dispose() {
    titleController.text = '';
    descriptionController.text = '';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: _isDarkMode ? Brightness.dark : Brightness.light);
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          actions: [
            IconButton(
              isSelected: _isDarkMode,
              onPressed: () {
                setState(() {
                  DarkMode.setDarkMode(_isDarkMode);
                  // _isDarkMode = !_isDarkMode; //change mode
                });
              },
              icon: const Icon(Icons.wb_sunny_outlined),
              selectedIcon: const Icon(Icons.brightness_2_outlined),
            ),
          ],
          title: const Text('Create Form'),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          flexibleSpace: Container(
            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 90.0, 0.0),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                      child: reusableInputFieldWidget(
                          "Title", Icons.text_fields, titleController)),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                    child: reusableInputFieldWidget(
                        "Body", Icons.text_fields, descriptionController),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(200, 0, 0, 0),
                  child: reusableButtonWidget(context, "Post", () {
                    title = titleController.text;
                    description = descriptionController.text;
                    if (title.isNotEmpty && description.isNotEmpty) {
                      //add form model to global list
                      var user = User(
                          userId: Guid.newGuid,
                          username: "JeffTheKilla",
                          email: "test@email.com",
                          firstName: "firstName",
                          lastName: "lastName",
                          password: "password",
                          joinDate: DateTime.now(),
                          profilePictureURL:
                              "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg");
                      var form = FormModel(
                          formOwner: user,
                          formTitle: title,
                          formBody: description);
                      Forms.forms.add(form);
                      //clears text fields
                      titleController.text = '';
                      descriptionController.text = '';
                    }
                  }, 0, 0, 0, 0),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
