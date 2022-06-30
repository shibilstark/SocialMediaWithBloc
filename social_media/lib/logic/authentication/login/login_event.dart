part of 'login_bloc.dart';

class LoginEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoginToAccount extends LoginEvent {
  final String email;
  final String password;

  LoginToAccount({required this.email, required this.password});
}

class LogOutFromAccount extends LoginEvent {
  final UserModel model;

  LogOutFromAccount({required this.model});
}
