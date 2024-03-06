import 'dart:convert'; //JSON

import 'package:flutter/material.dart';
import 'package:formcentral/models/formModel.dart';
import 'package:formcentral/pages/createFormPage.dart';
import 'package:formcentral/pages/homePage.dart';
import 'package:formcentral/pages/notificationsPage.dart';
import 'package:formcentral/pages/profilePage.dart';
import 'package:formcentral/pages/searchPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class Forms {
  static List<FormModel> forms = [];
}

class Pages {
  static List<Widget> pageList = [
    const HomePage(),
    const SearchPage(),
    const CreateFormPage(),
    const NotificationsPage(),
    const ProfilePage()
  ];
}

class DarkMode {
  // static getDarkMode() {
  //   bool results = true;
  //   final preferencesFuture = SharedPreferences.getInstance();
  //   preferencesFuture
  //       .then((preferences) => {results = preferences.getBool("isDarkMode")!});
  //   // return (results == null) ? true : false;
  //   return results;
  // }

  static Future<bool> getDarkMode() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? isDarkMode = preferences.getBool("isDarkMode");
    return isDarkMode ?? true; // If null, default to true
  }

  static setDarkMode(bool isDarkMode) {
    final preferencesFuture = SharedPreferences.getInstance();
    preferencesFuture.then(
        (preferences) => {preferences.setBool("isDarkMode", !isDarkMode)});
    print(isDarkMode);
  }
}

class Kanye {
  static getQuote() async {
    var url = Uri.https('api.kanye.rest');
    var response = await http.get(url);
    // var body = response.body.toString();
    var data = jsonDecode(response.body);

    print(data["quote"]);

    return data['quote'];
  }
}
