import 'package:flutter/material.dart';
import 'package:formcentral/models/userModel.dart';

class FormModel
{
  User formOwner;
  //String formOwner;
  String formTitle;
  String formBody;
  String? formImageURL;
  String? formLink;

  FormModel({
    required this.formOwner,
    required this.formTitle,
    required this.formBody,
    this.formImageURL,
    this.formLink    
  });
}