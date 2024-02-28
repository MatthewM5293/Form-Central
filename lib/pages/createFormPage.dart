import 'package:flutter/material.dart';
import 'package:flutter_guid/flutter_guid.dart';
import 'package:formcentral/customWidgets/customWidgets.dart';
import 'package:formcentral/customWidgets/global.dart';
import 'package:formcentral/models/formModel.dart';
import 'package:formcentral/models/userModel.dart';
import 'package:formcentral/pages/homePage.dart';
import 'package:formcentral/pages/notificationsPage.dart';
import 'package:formcentral/pages/searchPage.dart';

class CreateFormPage extends StatefulWidget {
  const CreateFormPage({super.key});

  @override
  State<StatefulWidget> createState() => _CreateFormPage();
}

class _CreateFormPage extends State<CreateFormPage> {
  String title = "";
  String description = "";

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  dispose() {
    titleController.text = '';
    descriptionController.text = '';
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create',
          // style: TextStyle(
          //     color: Colors.yellow.shade600, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 90.0, 0.0),
          // child: Image.asset('assets/images/Neumont_logo.png'),
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
              reusableButtonWidget(context, "Back", () {
                Navigator.pop(context);
              }, 0, 0, 0, 0),
              reusableButtonWidget(context, "Post", () {
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
                      formOwner: user, formTitle: title, formBody: description);
                  forms.add(form);
                  print("Yes");
                  //clears text fields
                  titleController.text = '';
                  descriptionController.text = '';
                }
              }, 0, 0, 0, 0),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          onTap: (value) => {
                  if (value == 1)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchPage()))
                    }
                  else if (value == 0)
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()))
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
    );
  }
}
