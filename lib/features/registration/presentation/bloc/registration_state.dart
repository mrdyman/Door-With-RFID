part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.registering() = _Registering;
  const factory RegistrationState.registerSuccessfully() =
      _RegisterSuccessfully;
  const factory RegistrationState.registerFailed() = _RegisterFailed;
  const factory RegistrationState.error() = _Error;
}
