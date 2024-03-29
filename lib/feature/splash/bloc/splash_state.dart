part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.userFound() = _UserFound;
  const factory SplashState.noCurrentUser() = _NoCurrentUser;
}
