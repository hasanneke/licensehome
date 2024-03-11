import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/guest_history/guest_history_page.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/home_page.dart';
import 'package:licensehome/feature/home/widgets/profile_view/profile_view.dart';
import 'package:licensehome/feature/login/login_page.dart';
import 'package:licensehome/shared/model/resident.dart';
import 'package:licensehome/shared/widget/guest_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            exit: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ));
            },
          );
        },
        builder: (context, state) {
          return state.when(
            exit: () => const SizedBox.shrink(),
            initial: () => const SizedBox.shrink(),
            loaded: (guests, resident) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ProfileVew(resident: resident),
                  ListTile(
                    title: Text(
                      'Beklenen Misafirlerim',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  guests.isEmpty
                      ? const Text(
                          'Henüz misafiriniz yok...',
                          textAlign: TextAlign.center,
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: guests.length,
                            itemBuilder: (context, index) =>
                                GuestCard(guest: guests[index]),
                          ),
                        ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
