// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'RegistrationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() create,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? create,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegistrationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_CreateCopyWith<$Res> {
  factory _$$_CreateCopyWith(_$_Create value, $Res Function(_$_Create) then) =
      __$$_CreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_Create>
    implements _$$_CreateCopyWith<$Res> {
  __$$_CreateCopyWithImpl(_$_Create _value, $Res Function(_$_Create) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create();

  @override
  String toString() {
    return 'RegistrationEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() create,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? create,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Create value) create,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Create value)? create,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Create value)? create,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements RegistrationEvent {
  const factory _Create() = _$_Create;
}

/// @nodoc
mixin _$RegistrationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RegistrationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegistrationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_RegisteringCopyWith<$Res> {
  factory _$$_RegisteringCopyWith(
          _$_Registering value, $Res Function(_$_Registering) then) =
      __$$_RegisteringCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisteringCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Registering>
    implements _$$_RegisteringCopyWith<$Res> {
  __$$_RegisteringCopyWithImpl(
      _$_Registering _value, $Res Function(_$_Registering) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Registering implements _Registering {
  const _$_Registering();

  @override
  String toString() {
    return 'RegistrationState.registering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Registering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) {
    return registering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) {
    return registering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) {
    return registering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) {
    return registering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registering != null) {
      return registering(this);
    }
    return orElse();
  }
}

abstract class _Registering implements RegistrationState {
  const factory _Registering() = _$_Registering;
}

/// @nodoc
abstract class _$$_RegisterSuccessfullyCopyWith<$Res> {
  factory _$$_RegisterSuccessfullyCopyWith(_$_RegisterSuccessfully value,
          $Res Function(_$_RegisterSuccessfully) then) =
      __$$_RegisterSuccessfullyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterSuccessfullyCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegisterSuccessfully>
    implements _$$_RegisterSuccessfullyCopyWith<$Res> {
  __$$_RegisterSuccessfullyCopyWithImpl(_$_RegisterSuccessfully _value,
      $Res Function(_$_RegisterSuccessfully) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterSuccessfully implements _RegisterSuccessfully {
  const _$_RegisterSuccessfully();

  @override
  String toString() {
    return 'RegistrationState.registerSuccessfully()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterSuccessfully);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) {
    return registerSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) {
    return registerSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (registerSuccessfully != null) {
      return registerSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) {
    return registerSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) {
    return registerSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registerSuccessfully != null) {
      return registerSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _RegisterSuccessfully implements RegistrationState {
  const factory _RegisterSuccessfully() = _$_RegisterSuccessfully;
}

/// @nodoc
abstract class _$$_RegisterFailedCopyWith<$Res> {
  factory _$$_RegisterFailedCopyWith(
          _$_RegisterFailed value, $Res Function(_$_RegisterFailed) then) =
      __$$_RegisterFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RegisterFailedCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegisterFailed>
    implements _$$_RegisterFailedCopyWith<$Res> {
  __$$_RegisterFailedCopyWithImpl(
      _$_RegisterFailed _value, $Res Function(_$_RegisterFailed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RegisterFailed implements _RegisterFailed {
  const _$_RegisterFailed();

  @override
  String toString() {
    return 'RegistrationState.registerFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RegisterFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) {
    return registerFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) {
    return registerFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) {
    return registerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) {
    return registerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (registerFailed != null) {
      return registerFailed(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailed implements RegistrationState {
  const factory _RegisterFailed() = _$_RegisterFailed;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'RegistrationState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() registering,
    required TResult Function() registerSuccessfully,
    required TResult Function() registerFailed,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? registering,
    TResult? Function()? registerSuccessfully,
    TResult? Function()? registerFailed,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? registering,
    TResult Function()? registerSuccessfully,
    TResult Function()? registerFailed,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Registering value) registering,
    required TResult Function(_RegisterSuccessfully value) registerSuccessfully,
    required TResult Function(_RegisterFailed value) registerFailed,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Registering value)? registering,
    TResult? Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult? Function(_RegisterFailed value)? registerFailed,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Registering value)? registering,
    TResult Function(_RegisterSuccessfully value)? registerSuccessfully,
    TResult Function(_RegisterFailed value)? registerFailed,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RegistrationState {
  const factory _Error() = _$_Error;
}
