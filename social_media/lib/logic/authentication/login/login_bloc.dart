import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/data/repos/accounts/accounts.dart';

import '../../../data/db/user_credentials/user_cred.dart';
import '../../../data/preferences/login_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AccountServices _accountServices;
  LoginBloc(this._accountServices)
      : super(LoginInitial(
            loginStateIsError: false,
            loginStateIsLoading: false,
            loginStateIsSuccess: false,
            userModel: null,
            error: null)) {
    on<LoginToAccount>((event, emit) async {
      emit(LoginInitial(
        loginStateIsLoading: true,
        loginStateIsSuccess: false,
        loginStateIsError: false,
      ));

      log("Happened");

      final result = await _accountServices.loginToAccount(
          email: event.email, password: event.password);

      log("Service Called");

      result.fold((err) {
        log("errir Called");
        emit(state.copyWith(
          loginStateIsError: true,
          loginStateIsLoading: false,
        ));
      }, (model) async {
        log("Success Called");
        emit(state.copyWith(
          loginStateIsError: false,
          loginStateIsLoading: false,
          loginStateIsSuccess: true,
        ));

        await UserCred.saveUserCred(model: model);
        await setStatusAsLoggedIn();
      });
    });

    on<LogOutFromAccount>((event, emit) async {
      emit(LoginState(
        loginStateIsLoading: true,
        loginStateIsSuccess: false,
        loginStateIsError: false,
      ));

      final result = await _accountServices.logOut(model: event.model);

      result.fold(
        (err) {
          return emit(state.copyWith(
            loginStateIsLoading: false,
            loginStateIsError: true,
            loginStateIsSuccess: false,
            error: err.toString(),
          ));
        },
        (model) async {
          await UserCred.clearUserCred();
          await setStatusAsLoggedOut();

          return emit(state.copyWith(
            loginStateIsLoading: false,
            loginStateIsError: true,
            loginStateIsSuccess: false,
            userModel: model,
          ));
        },
      );
    });
  }
}
