import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/splash/bloc/splash_bloc.dart';
import 'package:licensehome/feature/splash/splash_view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(const SplashEvent.started()),
      child: const SplashView(),
    );
  }
}
