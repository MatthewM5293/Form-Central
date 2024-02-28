import 'dart:core';
import 'package:flutter_guid/flutter_guid.dart';

class User {
  Guid userId = Guid.newGuid;
  String username;
  String email;
  String firstName;
  String lastName;
  String password;
  DateTime joinDate;
  String profilePictureURL;
  //public Image profilePicture ;

  User({
    required this.userId,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.joinDate,
    required this.profilePictureURL,
  });
}
