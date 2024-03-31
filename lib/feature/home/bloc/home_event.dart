part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.addGuest({required Resident resident}) = _AddGuest;
  const factory HomeEvent.updateGuest({required Guest guest}) = _UpdateGuest;
  const factory HomeEvent.logout() = _Logout;
}
