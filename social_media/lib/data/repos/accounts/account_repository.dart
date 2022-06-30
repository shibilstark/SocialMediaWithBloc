import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/core/collections/firebase_collections.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/profile_model/profile_model.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/data/repos/accounts/accounts.dart';

@LazySingleton(as: AccountServices)
class AccountRepositories implements AccountServices {
  @override
  Future<Either<MainFaulures, UserModel>> createAccount(
      {required UserModel model}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: model.email, password: model.password);

      //  Creating Paricular Collection
      final usersCollection = FirebaseFirestore.instance
          .collection(Collections.users)
          .doc(model.userId);
      final data = model.toMap();
      usersCollection.set(data);

      return Right(model);
    } on FirebaseException catch (e) {
      return Left(MainFaulures.firebaseException(err: e));
    } catch (e) {
      log(e.toString());
      Left(MainFaulures.clientFalure());
      throw UnimplementedError();
    }
  }

  @override
  Future<Either<MainFaulures, UserModel>> loginToAccount(
      {required String email, required String password}) async {
    try {
      final userCollection =
          await FirebaseFirestore.instance.collection(Collections.users).get();
      final users = userCollection.docs.toSet();

      for (var user in users) {
        if (user.data()["email"] == email) {
          if (user.data()["password"] == password) {
            return Right(UserModel.fromMap(user.data()));
          } else {
            return Left(MainFaulures.wrongPassword());
          }
        } else {
          return Left(MainFaulures.userNotFound());
        }
      }
    } on FirebaseException catch (e) {
      log(e.toString());
      return Left(MainFaulures.firebaseException(err: e));
    }
    return Left(MainFaulures.clientFalure());
  }

  @override
  Future<Either<MainFaulures, UserModel>> logOut(
      {required UserModel model}) async {
    try {
      await FirebaseAuth.instance.signOut();

      Right(model);
    } on FirebaseException catch (e) {
      Left(MainFaulures.firebaseException(err: e));
    }
    throw (e) {
      log(e.toString());
      UnimplementedError(e.toString());
    };
  }
}
