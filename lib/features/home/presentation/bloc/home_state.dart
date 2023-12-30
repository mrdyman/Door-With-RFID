part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loaded() = _Loaded;
  const factory HomeState.doorForcedOpen() = _DoorForcedOpen;
}
