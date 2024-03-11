import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(_Initial()) {
    on<SplashEvent>((event, emit) {
      event.when(
        started: () {
          final currentUser = FirebaseAuth.instance.currentUser;
          if (currentUser == null) {
            emit(
              const SplashState.noCurrentUser(),
            );
          } else {
            emit(
              const SplashState.userFound(),
            );
          }
        },
      );
    });
  }
}
