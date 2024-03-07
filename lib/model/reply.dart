import 'package:flutter/material.dart';
import 'package:formcentral/model/user.dart';
import 'package:isar/isar.dart';

part 'reply.g.dart';

@collection
class Reply {
  Id id = Isar.autoIncrement;
  @ignore
  User? replyOwner;
  String? replyMessage;
  String? replyLink;

  Reply({this.replyOwner, this.replyMessage, this.replyLink});
}
