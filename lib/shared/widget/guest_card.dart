import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/guest_detail/guest_detail_dialog.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/widgets/add_guest/view/add_guest.dart';
import 'package:licensehome/shared/model/guest.dart';

class GuestCard extends StatelessWidget {
  const GuestCard({
    super.key,
    required this.guest,
  });
  final Guest guest;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () async {
          final res = await showDialog(
            context: context,
            builder: (context) => AddGuest(guest: guest),
          );
          print(res);
          if (res != null) {
            context.read<HomeBloc>().add(HomeEvent.updateGuest(guest: res));
          }
        },
        title: Text(guest.plate),
        subtitle: Text(guest.name ?? ''),
        trailing: const Icon(
          Icons.timer_outlined,
        ),
      ),
    );
  }
}
