import 'dart:io';

import 'package:formcentral/model/form.dart';
import 'package:formcentral/model/reply.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:formcentral/model/user.dart';

class Database {
  late Directory dir;
  late Isar isar;

  Future<void> InitDB() async {
    if (dir == null && isar == null) {
      getApplicationDocumentsDirectory()
          .then((value) => dir = value)
          .whenComplete(() => Isar.open(
              [UserSchema, FormModelSchema, ReplySchema],
              directory: dir!.path));
    }
  }

  AddUserToDB(User user) async {
    await InitDB();
    await isar!.writeTxn(() async {
      await isar!.users.put(user); // insert & update
    });
  }

  AddFormToDB(FormModel form) async {
    await InitDB();
    await isar!.writeTxn(() async {
      await isar!.formModels.put(form); // insert & update
    });
  }

  AddReplyToDB(Reply reply) async {
    await InitDB();
    await isar!.writeTxn(() async {
      await isar!.replys.put(reply); // insert & update
    });
  }

  GetUserFromDB(int id) async {
    await InitDB();
    final existingUser = await isar!.users.get(id); // get
  }

  GetFormFromDB(int id) async {
    await InitDB();
    return await isar!.formModels.get(id); // get
  }

  GetReplyFromDB(int id) async {
    await InitDB();
    return await isar!.replys.get(id); // get
  }

  DeleteUserFromDB(int id) async {
    await InitDB();
    isar!.users.delete(id); // get
  }

  DeleteFormFromDB(int id) async {
    await InitDB();
    isar!.formModels.delete(id); // get
  }

  DeleteReplyFromDB(int id) async {
    await InitDB();
    isar!.replys.delete(id); // get
  }
}
