import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/shared/model/resident.dart';

class ProfileVew extends StatelessWidget {
  const ProfileVew({
    super.key,
    required this.resident,
  });
  final Resident resident;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profilim',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ListTile(
              leading: const CircleAvatar(
                child: FlutterLogo(),
              ),
              title: Text(resident.owner),
              subtitle: Text(resident.phone),
              trailing: IconButton.filledTonal(
                onPressed: () {
                  context.read<HomeBloc>().add(const HomeEvent.logout());
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
