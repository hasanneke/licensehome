import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/widgets/add_guest/view/add_guest.dart';
import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text('Misafir Ekle'),
      icon: const Icon(Icons.person_add_outlined),
      onPressed: () async {
        final res = await showDialog<Resident?>(
          context: context,
          builder: (context) => AddGuest(),
        );
        if (res != null) {
          context.read<HomeBloc>().add(HomeEvent.addGuest(resident: res));
        }
      },
    );
  }
}
