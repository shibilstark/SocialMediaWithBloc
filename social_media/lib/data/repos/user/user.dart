import 'package:dartz/dartz.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/user_model/user_model.dart';

abstract class UserServices {
  Future<Either<MainFaulures, UserModel>> getUser();
  Future<Either<MainFaulures, UserModel>> getUserById({required String userId});
}
