// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_account_bloc.dart';

class CreateAccountState extends Equatable {
  final bool createAccountIsLoading;
  final bool createAccountIsError;
  final bool createAccountIsSuccess;
  UserModel? userModel;
  String? error;

  CreateAccountState({
    required this.createAccountIsLoading,
    required this.createAccountIsError,
    required this.createAccountIsSuccess,
    this.userModel,
    this.error,
  });

  @override
  List<Object> get props => [
        createAccountIsLoading,
        createAccountIsError,
        createAccountIsSuccess,
      ];

  CreateAccountState copyWith({
    bool? createAccountIsLoading,
    bool? createAccountIsError,
    bool? createAccountIsSuccess,
    UserModel? userModel,
    String? error,
  }) {
    return CreateAccountState(
      createAccountIsLoading:
          createAccountIsLoading ?? this.createAccountIsLoading,
      createAccountIsError: createAccountIsError ?? this.createAccountIsError,
      createAccountIsSuccess:
          createAccountIsSuccess ?? this.createAccountIsSuccess,
      userModel: userModel ?? this.userModel,
      error: error ?? this.error,
    );
  }
}

class CreateAccountInitial extends CreateAccountState {
  CreateAccountInitial({
    required bool createAccountIsLoading,
    required bool createAccountIsError,
    required bool createAccountIsSuccess,
    UserModel? userModel,
    String? error,
  }) : super(
            createAccountIsLoading: false,
            createAccountIsError: false,
            createAccountIsSuccess: false,
            userModel: null,
            error: null);
}
