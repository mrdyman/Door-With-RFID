// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
    extends _$HomeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
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
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
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
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DismissForceOpenDoorCopyWith<$Res> {
  factory _$$_DismissForceOpenDoorCopyWith(_$_DismissForceOpenDoor value,
          $Res Function(_$_DismissForceOpenDoor) then) =
      __$$_DismissForceOpenDoorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DismissForceOpenDoorCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_DismissForceOpenDoor>
    implements _$$_DismissForceOpenDoorCopyWith<$Res> {
  __$$_DismissForceOpenDoorCopyWithImpl(_$_DismissForceOpenDoor _value,
      $Res Function(_$_DismissForceOpenDoor) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DismissForceOpenDoor implements _DismissForceOpenDoor {
  const _$_DismissForceOpenDoor();

  @override
  String toString() {
    return 'HomeEvent.dismissForceOpenDoor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DismissForceOpenDoor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) {
    return dismissForceOpenDoor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) {
    return dismissForceOpenDoor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (dismissForceOpenDoor != null) {
      return dismissForceOpenDoor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return dismissForceOpenDoor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return dismissForceOpenDoor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (dismissForceOpenDoor != null) {
      return dismissForceOpenDoor(this);
    }
    return orElse();
  }
}

abstract class _DismissForceOpenDoor implements HomeEvent {
  const factory _DismissForceOpenDoor() = _$_DismissForceOpenDoor;
}

/// @nodoc
abstract class _$$_GetUsersCopyWith<$Res> {
  factory _$$_GetUsersCopyWith(
          _$_GetUsers value, $Res Function(_$_GetUsers) then) =
      __$$_GetUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetUsersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetUsers>
    implements _$$_GetUsersCopyWith<$Res> {
  __$$_GetUsersCopyWithImpl(
      _$_GetUsers _value, $Res Function(_$_GetUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetUsers implements _GetUsers {
  const _$_GetUsers();

  @override
  String toString() {
    return 'HomeEvent.getUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) {
    return getUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) {
    return getUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class _GetUsers implements HomeEvent {
  const factory _GetUsers() = _$_GetUsers;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$_Search(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search({required this.keyword});

  @override
  final String keyword;

  @override
  String toString() {
    return 'HomeEvent.search(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) {
    return search(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) {
    return search?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomeEvent {
  const factory _Search({required final String keyword}) = _$_Search;

  String get keyword;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteUserCopyWith<$Res> {
  factory _$$_DeleteUserCopyWith(
          _$_DeleteUser value, $Res Function(_$_DeleteUser) then) =
      __$$_DeleteUserCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_DeleteUserCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_DeleteUser>
    implements _$$_DeleteUserCopyWith<$Res> {
  __$$_DeleteUserCopyWithImpl(
      _$_DeleteUser _value, $Res Function(_$_DeleteUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_DeleteUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteUser implements _DeleteUser {
  const _$_DeleteUser({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HomeEvent.deleteUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteUser &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteUserCopyWith<_$_DeleteUser> get copyWith =>
      __$$_DeleteUserCopyWithImpl<_$_DeleteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() dismissForceOpenDoor,
    required TResult Function() getUsers,
    required TResult Function(String keyword) search,
    required TResult Function(int id) deleteUser,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? dismissForceOpenDoor,
    TResult? Function()? getUsers,
    TResult? Function(String keyword)? search,
    TResult? Function(int id)? deleteUser,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? dismissForceOpenDoor,
    TResult Function()? getUsers,
    TResult Function(String keyword)? search,
    TResult Function(int id)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DismissForceOpenDoor value) dismissForceOpenDoor,
    required TResult Function(_GetUsers value) getUsers,
    required TResult Function(_Search value) search,
    required TResult Function(_DeleteUser value) deleteUser,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult? Function(_GetUsers value)? getUsers,
    TResult? Function(_Search value)? search,
    TResult? Function(_DeleteUser value)? deleteUser,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DismissForceOpenDoor value)? dismissForceOpenDoor,
    TResult Function(_GetUsers value)? getUsers,
    TResult Function(_Search value)? search,
    TResult Function(_DeleteUser value)? deleteUser,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class _DeleteUser implements HomeEvent {
  const factory _DeleteUser({required final int id}) = _$_DeleteUser;

  int get id;
  @JsonKey(ignore: true)
  _$$_DeleteUserCopyWith<_$_DeleteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
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
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded();

  @override
  String toString() {
    return 'HomeState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded() = _$_Loaded;
}

/// @nodoc
abstract class _$$_DoorForcedOpenCopyWith<$Res> {
  factory _$$_DoorForcedOpenCopyWith(
          _$_DoorForcedOpen value, $Res Function(_$_DoorForcedOpen) then) =
      __$$_DoorForcedOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoorForcedOpenCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_DoorForcedOpen>
    implements _$$_DoorForcedOpenCopyWith<$Res> {
  __$$_DoorForcedOpenCopyWithImpl(
      _$_DoorForcedOpen _value, $Res Function(_$_DoorForcedOpen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DoorForcedOpen implements _DoorForcedOpen {
  const _$_DoorForcedOpen();

  @override
  String toString() {
    return 'HomeState.doorForcedOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DoorForcedOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) {
    return doorForcedOpen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) {
    return doorForcedOpen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
    required TResult orElse(),
  }) {
    if (doorForcedOpen != null) {
      return doorForcedOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) {
    return doorForcedOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) {
    return doorForcedOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (doorForcedOpen != null) {
      return doorForcedOpen(this);
    }
    return orElse();
  }
}

abstract class _DoorForcedOpen implements HomeState {
  const factory _DoorForcedOpen() = _$_DoorForcedOpen;
}

/// @nodoc
abstract class _$$_DoorOpenCopyWith<$Res> {
  factory _$$_DoorOpenCopyWith(
          _$_DoorOpen value, $Res Function(_$_DoorOpen) then) =
      __$$_DoorOpenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DoorOpenCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_DoorOpen>
    implements _$$_DoorOpenCopyWith<$Res> {
  __$$_DoorOpenCopyWithImpl(
      _$_DoorOpen _value, $Res Function(_$_DoorOpen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DoorOpen implements _DoorOpen {
  const _$_DoorOpen();

  @override
  String toString() {
    return 'HomeState.doorOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DoorOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) {
    return doorOpen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) {
    return doorOpen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
    required TResult orElse(),
  }) {
    if (doorOpen != null) {
      return doorOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) {
    return doorOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) {
    return doorOpen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (doorOpen != null) {
      return doorOpen(this);
    }
    return orElse();
  }
}

abstract class _DoorOpen implements HomeState {
  const factory _DoorOpen() = _$_DoorOpen;
}

/// @nodoc
abstract class _$$_UserDeletedCopyWith<$Res> {
  factory _$$_UserDeletedCopyWith(
          _$_UserDeleted value, $Res Function(_$_UserDeleted) then) =
      __$$_UserDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDeletedCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_UserDeleted>
    implements _$$_UserDeletedCopyWith<$Res> {
  __$$_UserDeletedCopyWithImpl(
      _$_UserDeleted _value, $Res Function(_$_UserDeleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserDeleted implements _UserDeleted {
  const _$_UserDeleted();

  @override
  String toString() {
    return 'HomeState.userDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() doorForcedOpen,
    required TResult Function() doorOpen,
    required TResult Function() userDeleted,
  }) {
    return userDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? doorForcedOpen,
    TResult? Function()? doorOpen,
    TResult? Function()? userDeleted,
  }) {
    return userDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? doorForcedOpen,
    TResult Function()? doorOpen,
    TResult Function()? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DoorForcedOpen value) doorForcedOpen,
    required TResult Function(_DoorOpen value) doorOpen,
    required TResult Function(_UserDeleted value) userDeleted,
  }) {
    return userDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult? Function(_DoorOpen value)? doorOpen,
    TResult? Function(_UserDeleted value)? userDeleted,
  }) {
    return userDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DoorForcedOpen value)? doorForcedOpen,
    TResult Function(_DoorOpen value)? doorOpen,
    TResult Function(_UserDeleted value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(this);
    }
    return orElse();
  }
}

abstract class _UserDeleted implements HomeState {
  const factory _UserDeleted() = _$_UserDeleted;
}
