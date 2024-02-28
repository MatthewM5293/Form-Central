import 'package:flutter/material.dart';
import 'package:formcentral/pages/createFormPage.dart';
import 'package:formcentral/pages/homePage.dart';
import 'package:formcentral/pages/searchPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage()
    );
  }
}
