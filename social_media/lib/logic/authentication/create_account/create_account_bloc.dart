import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/data/db/user_credentials/user_cred.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/data/preferences/login_preferences.dart';
import 'package:social_media/data/repos/accounts/accounts.dart';
part 'create_account_event.dart';
part 'create_account_state.dart';

@injectable
class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  final AccountServices _accountServices;

  // initialState
  CreateAccountBloc(this._accountServices)
      : super(CreateAccountInitial(
          createAccountIsError: false,
          createAccountIsLoading: false,
          createAccountIsSuccess: false,
          error: null,
          userModel: null,
        )) {
    //
    //
    //
    //
    // Create Account Event
    on<CreateNewAccount>((event, emit) async {
//
      // isLoading
      emit(state.copyWith(
        createAccountIsLoading: true,
        createAccountIsError: false,
        createAccountIsSuccess: false,
      ));

      // Craeting Account
      final result = await _accountServices.createAccount(model: event.model);

      // providein wheather success or error
      result.fold(
        (failure) async {
          emit(state.copyWith(
            error: failure.toString(),
            createAccountIsLoading: false,
            createAccountIsError: true,
          ));
        },
        (userModel) async {
          emit(state.copyWith(
            userModel: userModel,
            createAccountIsLoading: false,
            createAccountIsError: false,
            createAccountIsSuccess: true,
          ));
          await UserCred.saveUserCred(model: userModel);
          await setStatusAsLoggedIn();
        },
      );
    });
    on<ResetCreateAccount>((event, emit) async {});
  }
}
