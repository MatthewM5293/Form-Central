import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? password;
  DateTime? joinDate;
  String? profilePictureURL;
  //public Image profilePicture ;

  User({
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.password,
    this.joinDate,
    this.profilePictureURL,
  });
}
