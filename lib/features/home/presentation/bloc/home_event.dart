part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.dismissForceOpenDoor() = _DismissForceOpenDoor;
  const factory HomeEvent.getUsers() = _GetUsers;
  const factory HomeEvent.search({required String keyword}) = _Search;
  const factory HomeEvent.deleteUser({required int id}) = _DeleteUser;
}
