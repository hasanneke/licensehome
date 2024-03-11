import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/home_view.dart';
import 'package:licensehome/feature/home/widgets/floating_button/home_floating_button.dart';
import 'package:licensehome/shared/service/fbguest_service.dart';
import 'package:licensehome/shared/service/fbprofile_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        residentService: FBResidentService(),
        guestService: FBGuestService(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Esenler Sitesi'),
        ),
        body: const HomeView(),
        floatingActionButton: const HomeFloatingActionButton(),
      ),
    );
  }
}
