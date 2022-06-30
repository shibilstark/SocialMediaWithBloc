import 'package:dartz/dartz.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/user_model/user_model.dart';

abstract class AccountServices {
  Future<Either<MainFaulures, UserModel>> createAccount(
      {required UserModel model});
  Future<Either<MainFaulures, UserModel>> loginToAccount(
      {required String email, required String password});

  Future<Either<MainFaulures, UserModel>> logOut({required UserModel model});
}
