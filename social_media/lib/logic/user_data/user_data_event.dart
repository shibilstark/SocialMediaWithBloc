part of 'user_data_bloc.dart';

@immutable
abstract class UserDataEvent {}

class GetCurrentUser extends UserDataEvent {}
