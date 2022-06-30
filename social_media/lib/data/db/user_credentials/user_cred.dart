import 'package:hive_flutter/hive_flutter.dart';
import 'package:social_media/data/models/user_model/user_model.dart';

class UserCred {
  static saveUserCred({required UserModel model}) async {
    final DB = await Hive.openBox<UserModel>("UserCred");
    await DB.clear();
    await DB.add(model);
  }

  static Future<UserModel?> GetUserCred() async {
    final DB = await Hive.openBox<UserModel>("UserCred");
    late final userModel;
    if (DB.isEmpty) {
      userModel = null;
    } else {
      userModel = await DB.values.elementAt(0);
    }

    if (userModel != null) {
      return userModel;
    } else {
      return null;
    }
  }

  static clearUserCred() async {
    final DB = await Hive.openBox<UserModel>("UserCred");
    await DB.clear();
  }
}
