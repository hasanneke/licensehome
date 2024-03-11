import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/login/bloc/login_bloc.dart';
import 'package:licensehome/feature/login/login_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş'),
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(),
        child: const LoginView(),
      ),
    );
  }
}
