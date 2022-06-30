part of 'create_account_bloc.dart';

class CreateAccountEvent extends Equatable {
  const CreateAccountEvent();

  @override
  List<Object> get props => [];
}

class CreateNewAccount extends CreateAccountEvent {
  final UserModel model;

  CreateNewAccount({required this.model});
}

class ResetCreateAccount extends CreateAccountEvent {}
