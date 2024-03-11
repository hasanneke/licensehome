import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(_Initial()) {
    FirebaseAuth.instance.userChanges().listen((event) {
      if (event != null) {
        emit(const LoginState.loggedIn());
      }
    });
    on<LoginEvent>((event, emit) async {
      await event.when(
        started: () {},
        login: (email, password) async {
          await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password);
        },
      );
    });
  }
}
