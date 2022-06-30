// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFaulures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() clientFalure,
    required TResult Function(FirebaseException err) firebaseException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_ClientFalure value) clientFalure,
    required TResult Function(_FirebaseExceprion value) firebaseException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFauluresCopyWith<$Res> {
  factory $MainFauluresCopyWith(
          MainFaulures value, $Res Function(MainFaulures) then) =
      _$MainFauluresCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainFauluresCopyWithImpl<$Res> implements $MainFauluresCopyWith<$Res> {
  _$MainFauluresCopyWithImpl(this._value, this._then);

  final MainFaulures _value;
  // ignore: unused_field
  final $Res Function(MainFaulures) _then;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<$Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound value, $Res Function(_$_UserNotFound) then) =
      __$$_UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<$Res>
    extends _$MainFauluresCopyWithImpl<$Res>
    implements _$$_UserNotFoundCopyWith<$Res> {
  __$$_UserNotFoundCopyWithImpl(
      _$_UserNotFound _value, $Res Function(_$_UserNotFound) _then)
      : super(_value, (v) => _then(v as _$_UserNotFound));

  @override
  _$_UserNotFound get _value => super._value as _$_UserNotFound;
}

/// @nodoc

class _$_UserNotFound implements _UserNotFound {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'MainFaulures.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() clientFalure,
    required TResult Function(FirebaseException err) firebaseException,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_ClientFalure value) clientFalure,
    required TResult Function(_FirebaseExceprion value) firebaseException,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements MainFaulures {
  const factory _UserNotFound() = _$_UserNotFound;
}

/// @nodoc
abstract class _$$_WrongPasswordCopyWith<$Res> {
  factory _$$_WrongPasswordCopyWith(
          _$_WrongPassword value, $Res Function(_$_WrongPassword) then) =
      __$$_WrongPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WrongPasswordCopyWithImpl<$Res>
    extends _$MainFauluresCopyWithImpl<$Res>
    implements _$$_WrongPasswordCopyWith<$Res> {
  __$$_WrongPasswordCopyWithImpl(
      _$_WrongPassword _value, $Res Function(_$_WrongPassword) _then)
      : super(_value, (v) => _then(v as _$_WrongPassword));

  @override
  _$_WrongPassword get _value => super._value as _$_WrongPassword;
}

/// @nodoc

class _$_WrongPassword implements _WrongPassword {
  const _$_WrongPassword();

  @override
  String toString() {
    return 'MainFaulures.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() clientFalure,
    required TResult Function(FirebaseException err) firebaseException,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_ClientFalure value) clientFalure,
    required TResult Function(_FirebaseExceprion value) firebaseException,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword implements MainFaulures {
  const factory _WrongPassword() = _$_WrongPassword;
}

/// @nodoc
abstract class _$$_ClientFalureCopyWith<$Res> {
  factory _$$_ClientFalureCopyWith(
          _$_ClientFalure value, $Res Function(_$_ClientFalure) then) =
      __$$_ClientFalureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientFalureCopyWithImpl<$Res>
    extends _$MainFauluresCopyWithImpl<$Res>
    implements _$$_ClientFalureCopyWith<$Res> {
  __$$_ClientFalureCopyWithImpl(
      _$_ClientFalure _value, $Res Function(_$_ClientFalure) _then)
      : super(_value, (v) => _then(v as _$_ClientFalure));

  @override
  _$_ClientFalure get _value => super._value as _$_ClientFalure;
}

/// @nodoc

class _$_ClientFalure implements _ClientFalure {
  const _$_ClientFalure();

  @override
  String toString() {
    return 'MainFaulures.clientFalure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClientFalure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() clientFalure,
    required TResult Function(FirebaseException err) firebaseException,
  }) {
    return clientFalure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
  }) {
    return clientFalure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
    required TResult orElse(),
  }) {
    if (clientFalure != null) {
      return clientFalure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_ClientFalure value) clientFalure,
    required TResult Function(_FirebaseExceprion value) firebaseException,
  }) {
    return clientFalure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
  }) {
    return clientFalure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
    required TResult orElse(),
  }) {
    if (clientFalure != null) {
      return clientFalure(this);
    }
    return orElse();
  }
}

abstract class _ClientFalure implements MainFaulures {
  const factory _ClientFalure() = _$_ClientFalure;
}

/// @nodoc
abstract class _$$_FirebaseExceprionCopyWith<$Res> {
  factory _$$_FirebaseExceprionCopyWith(_$_FirebaseExceprion value,
          $Res Function(_$_FirebaseExceprion) then) =
      __$$_FirebaseExceprionCopyWithImpl<$Res>;
  $Res call({FirebaseException err});
}

/// @nodoc
class __$$_FirebaseExceprionCopyWithImpl<$Res>
    extends _$MainFauluresCopyWithImpl<$Res>
    implements _$$_FirebaseExceprionCopyWith<$Res> {
  __$$_FirebaseExceprionCopyWithImpl(
      _$_FirebaseExceprion _value, $Res Function(_$_FirebaseExceprion) _then)
      : super(_value, (v) => _then(v as _$_FirebaseExceprion));

  @override
  _$_FirebaseExceprion get _value => super._value as _$_FirebaseExceprion;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_FirebaseExceprion(
      err: err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as FirebaseException,
    ));
  }
}

/// @nodoc

class _$_FirebaseExceprion implements _FirebaseExceprion {
  _$_FirebaseExceprion({required this.err});

  @override
  final FirebaseException err;

  @override
  String toString() {
    return 'MainFaulures.firebaseException(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseExceprion &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$$_FirebaseExceprionCopyWith<_$_FirebaseExceprion> get copyWith =>
      __$$_FirebaseExceprionCopyWithImpl<_$_FirebaseExceprion>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function() clientFalure,
    required TResult Function(FirebaseException err) firebaseException,
  }) {
    return firebaseException(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
  }) {
    return firebaseException?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function()? clientFalure,
    TResult Function(FirebaseException err)? firebaseException,
    required TResult orElse(),
  }) {
    if (firebaseException != null) {
      return firebaseException(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_WrongPassword value) wrongPassword,
    required TResult Function(_ClientFalure value) clientFalure,
    required TResult Function(_FirebaseExceprion value) firebaseException,
  }) {
    return firebaseException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
  }) {
    return firebaseException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_WrongPassword value)? wrongPassword,
    TResult Function(_ClientFalure value)? clientFalure,
    TResult Function(_FirebaseExceprion value)? firebaseException,
    required TResult orElse(),
  }) {
    if (firebaseException != null) {
      return firebaseException(this);
    }
    return orElse();
  }
}

abstract class _FirebaseExceprion implements MainFaulures {
  factory _FirebaseExceprion({required final FirebaseException err}) =
      _$_FirebaseExceprion;

  FirebaseException get err => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FirebaseExceprionCopyWith<_$_FirebaseExceprion> get copyWith =>
      throw _privateConstructorUsedError;
}
