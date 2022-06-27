import 'package:hive_flutter/adapters.dart';
part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel {
  @HiveField(0)
  String userId;
  @HiveField(1)
  String name;
  @HiveField(2)
  String email;
  @HiveField(3)
  String password;
  @HiveField(4)
  bool isAgreed;
  @HiveField(5)
  bool isPrivate;
  @HiveField(6)
  bool isBlocked;
  @HiveField(7)
  DateTime creationDate;
  @HiveField(8)
  bool isVerified;

  UserModel({
    required this.name,
    required this.email,
    required this.password,
    required this.isAgreed,
    required this.isPrivate,
    required this.isBlocked,
    required this.creationDate,
    required this.isVerified,
    required this.userId,
  });
}

Map<String, dynamic> userToJson(UserModel model) {
  final json = {
    "userId": model.userId,
    "creationDate": model.creationDate,
    "email": model.email,
    "password": model.password,
    "name": model.name,
    "isAgreed": model.isAgreed,
    "isBlocked": model.isBlocked,
    "isPrivate": model.isPrivate,
    "isVerified": model.isVerified,
  };
  return json;
}

UserModel userFromJson(Map<String, dynamic> json) {
  final model = UserModel(
    name: json["name"].toString(),
    email: json["email"].toString(),
    password: json["password"].toString(),
    isAgreed: json["isAgreed"],
    isPrivate: json["isPrivate"],
    isBlocked: json["isBlocked"],
    creationDate: json["creationDate"],
    isVerified: json["isVerified"],
    userId: json["userId"],
  );

  return model;
}
