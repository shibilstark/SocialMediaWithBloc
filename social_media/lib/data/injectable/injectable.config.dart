// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../logic/authentication/create_account/create_account_bloc.dart'
    as _i5;
import '../../logic/authentication/login/login_bloc.dart' as _i6;
import '../../logic/user_data/user_data_bloc.dart' as _i9;
import '../repos/accounts/account_repository.dart' as _i4;
import '../repos/accounts/accounts.dart' as _i3;
import '../repos/user/uesr_repository.dart' as _i8;
import '../repos/user/user.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AccountServices>(() => _i4.AccountRepositories());
  gh.factory<_i5.CreateAccountBloc>(
      () => _i5.CreateAccountBloc(get<_i3.AccountServices>()));
  gh.factory<_i6.LoginBloc>(() => _i6.LoginBloc(get<_i3.AccountServices>()));
  gh.lazySingleton<_i7.UserServices>(() => _i8.UserRepo());
  gh.factory<_i9.UserDataBloc>(() => _i9.UserDataBloc(get<_i7.UserServices>()));
  return get;
}
