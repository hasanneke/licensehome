part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loaded(
      {required List<Guest> guests, required Resident resident}) = _Loaded;
  const factory HomeState.exit() = _Exit;
}
