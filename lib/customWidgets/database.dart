import 'dart:io';

import 'package:formcentral/model/form.dart';
import 'package:formcentral/model/reply.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:formcentral/model/user.dart';

class Database {
  late Future<Isar> db;

  Database() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open([UserSchema, FormModelSchema, ReplySchema],
          inspector: true, directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }

  Future<void> addUserToDB(User user) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.users.putSync(user));
  }

  Future<dynamic> addFormToDB(FormModel form) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.formModels.putSync(form));
  }

  addReplyToDB(Reply reply) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.replys.putSync(reply));
  }

  Future<User?> getUserFromDB(int id) async {
    final isar = await db;
    return isar.users.get(id);
  }

  Future<FormModel?> getFormFromDB(int id) async {
    final isar = await db;
    return isar.formModels.get(id);
  }

  Future<Reply?> getReplyFromDB(int id) async {
    final isar = await db;
    return isar.replys.get(id);
  }

  deleteUserFromDB(int id) async {
    final isar = await db;
    isar.users.delete(id);
  }

  deleteFormFromDB(int id) async {
    final isar = await db;
    isar.formModels.delete(id);
  }

  deleteReplyFromDB(int id) async {
    final isar = await db;
    isar.replys.delete(id);
  }
}
