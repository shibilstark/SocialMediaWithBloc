// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_data_bloc.dart';

class UserDataState extends Equatable {
  final bool userDataIsLoading;
  final bool userDataIsError;
  final bool userDataIsSuccess;
  UserModel? userModel;
  String? err;

  UserDataState(
      {required this.userDataIsLoading,
      required this.userDataIsError,
      required this.userDataIsSuccess,
      this.userModel,
      this.err});

  List<Object?> get props => [
        userDataIsError,
        userDataIsLoading,
        userDataIsSuccess,
      ];

  UserDataState copyWith({
    bool? userDataIsLoading,
    bool? userDataIsError,
    bool? userDataIsSuccess,
    UserModel? userModel,
    String? err,
  }) {
    return UserDataState(
      userDataIsLoading: userDataIsLoading ?? this.userDataIsLoading,
      userDataIsError: userDataIsError ?? this.userDataIsError,
      userDataIsSuccess: userDataIsSuccess ?? this.userDataIsSuccess,
      userModel: userModel ?? this.userModel,
      err: err ?? this.err,
    );
  }
}

class UserDataInitial extends UserDataState {
  UserDataInitial({
    required bool userDataIsLoading,
    required bool userDataIsError,
    required bool userDataIsSuccess,
    UserModel? userModel,
    String? err,
  }) : super(
          userDataIsLoading: false,
          userDataIsError: false,
          userDataIsSuccess: false,
          userModel: null,
          err: null,
        );
}
