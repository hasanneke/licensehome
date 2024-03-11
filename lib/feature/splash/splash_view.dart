import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/home/home_page.dart';
import 'package:licensehome/feature/login/login_page.dart';
import 'package:licensehome/feature/splash/bloc/splash_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          userFound: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const HomePage(),
            ));
          },
          noCurrentUser: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const LoginPage(),
            ));
          },
        );
      },
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
