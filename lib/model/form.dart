import 'package:flutter/material.dart';
import 'package:formcentral/model/user.dart';
import 'package:isar/isar.dart';

part 'form.g.dart';

@collection
class FormModel {
  Id id = Isar.autoIncrement;
  @ignore
  User? formOwner;
  String? formTitle;
  String? formBody;
  String? formImageURL;
  String? formLink;

  FormModel(
      {this.formOwner,
      this.formTitle,
      this.formBody,
      this.formImageURL,
      this.formLink});
}
