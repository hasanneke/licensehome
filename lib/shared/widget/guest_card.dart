import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/guest_detail/guest_detail_dialog.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/widgets/add_guest/view/add_guest.dart';
import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';

class GuestCard extends StatelessWidget {
  const GuestCard({
    super.key,
    required this.resident,
  });
  final Resident resident;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () async {
          final res = await showDialog(
            context: context,
            builder: (context) => AddGuest(resident: resident),
          );

          if (res != null) {
            context.read<HomeBloc>().add(HomeEvent.updateGuest(guest: res));
          }
        },
        title: Text(resident.plate),
        subtitle: Text(resident.owner),
        trailing: const Icon(
          Icons.timer_outlined,
        ),
      ),
    );
  }
}
