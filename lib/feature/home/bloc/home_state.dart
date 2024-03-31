part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loaded(
      {required Resident resident,
      required List<Resident> residents}) = _Loaded;
  const factory HomeState.exit() = _Exit;
}
