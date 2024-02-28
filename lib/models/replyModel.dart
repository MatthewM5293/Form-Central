import 'package:flutter/material.dart';
import 'package:formcentral/models/userModel.dart';

class Reply
{
  User replyOwner;
  String replyMessage;
  String? replyLink;

  Reply({
    required this.replyOwner,
    required this.replyMessage,
    this.replyLink    
  });
}