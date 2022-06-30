import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/core/collections/firebase_collections.dart';
import 'package:social_media/data/db/user_credentials/user_cred.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:social_media/data/repos/user/user.dart';

@LazySingleton(as: UserServices)
class UserRepo implements UserServices {
  @override
  Future<Either<MainFaulures, UserModel>> getUser() async {
    try {
      final dbModel = await UserCred.GetUserCred();

      final userCollection =
          await FirebaseFirestore.instance.collection(Collections.users).get();

      final users = userCollection.docs.toSet();
      for (var element in users) {
        if (element.id == dbModel!.userId) {
          final data = UserModel.fromMap(element.data());
          log(element.data().toString());
          return Right(data);
        } else {
          throw (MainFaulures.clientFalure());
        }
      }
    } on FirebaseException catch (e) {
      throw Left(MainFaulures.firebaseException(err: e));
    }
    throw (e) {
      Left(MainFaulures.clientFalure());
    };
  }

  @override
  Future<Either<MainFaulures, UserModel>> getUserById(
      {required String userId}) async {
    // TODO: implement getUserById
    throw UnimplementedError();
  }
}
