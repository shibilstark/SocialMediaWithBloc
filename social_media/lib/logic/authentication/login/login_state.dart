// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'login_bloc.dart';

class LoginState extends Equatable {
  bool loginStateIsLoading;
  bool loginStateIsSuccess;
  bool loginStateIsError;
  UserModel? userModel;
  String? error;

  LoginState(
      {required this.loginStateIsLoading,
      required this.loginStateIsSuccess,
      required this.loginStateIsError,
      this.userModel,
      this.error});

  @override
  // TODO: implement props
  List<Object?> get props => [
        loginStateIsError,
        loginStateIsLoading,
        loginStateIsSuccess,
        userModel,
        error
      ];

  LoginState copyWith({
    bool? loginStateIsLoading,
    bool? loginStateIsSuccess,
    bool? loginStateIsError,
    UserModel? userModel,
    String? error,
  }) {
    return LoginState(
      loginStateIsLoading: loginStateIsLoading ?? this.loginStateIsLoading,
      loginStateIsSuccess: loginStateIsSuccess ?? this.loginStateIsSuccess,
      loginStateIsError: loginStateIsError ?? this.loginStateIsError,
      userModel: userModel ?? this.userModel,
      error: error ?? this.error,
    );
  }
}

class LoginInitial extends LoginState {
  LoginInitial({
    required bool loginStateIsLoading,
    required bool loginStateIsSuccess,
    required bool loginStateIsError,
    UserModel? userModel,
    String? error,
  }) : super(
          loginStateIsLoading: false,
          loginStateIsSuccess: false,
          loginStateIsError: false,
          userModel: null,
          error: null,
        );
}
