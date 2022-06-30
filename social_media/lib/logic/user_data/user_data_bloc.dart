import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:social_media/data/failures/main_failures.dart';
import 'package:social_media/data/models/user_model/user_model.dart';
import 'package:social_media/data/repos/user/user.dart';

part 'user_data_event.dart';
part 'user_data_state.dart';

@Injectable()
class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  final UserServices _userServices;
  UserDataBloc(this._userServices)
      : super(UserDataInitial(
            userDataIsError: false,
            userDataIsLoading: false,
            userDataIsSuccess: false)) {
    on<GetCurrentUser>((event, emit) async {
      if (state.userModel != null && state.userModel == state.userModel) {
        emit(state.copyWith(
            userDataIsLoading: false,
            userDataIsError: false,
            userDataIsSuccess: true,
            userModel: state.userModel));
      } else {
        emit(state.copyWith(userDataIsLoading: true));
      }

      final result = await _userServices.getUser();

      emit(state.copyWith(userDataIsLoading: true));

      result.fold(
        (err) {
          return emit(
            state.copyWith(
                userDataIsLoading: false,
                userDataIsError: true,
                err: err.toString()),
          );
        },
        (model) {
          return emit(state.copyWith(
              userDataIsLoading: false,
              userDataIsError: false,
              userDataIsSuccess: true,
              userModel: model));
        },
      );
    });
  }
}
