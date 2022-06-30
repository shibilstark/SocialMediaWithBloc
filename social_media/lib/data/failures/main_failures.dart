import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failures.freezed.dart';

@freezed
class MainFaulures with _$MainFaulures {
  const factory MainFaulures.userNotFound() = _UserNotFound;
  const factory MainFaulures.wrongPassword() = _WrongPassword;
  const factory MainFaulures.clientFalure() = _ClientFalure;
  factory MainFaulures.firebaseException({required FirebaseException err}) =
      _FirebaseExceprion;
}
