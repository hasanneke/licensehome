part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loggedIn() = _LoggedIn;
  const factory LoginState.loginFailed() = _LoginFailed;
}
