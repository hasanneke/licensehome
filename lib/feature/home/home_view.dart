import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:licensehome/feature/guest_history/guest_history_page.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/home_page.dart';
import 'package:licensehome/feature/home/widgets/profile_view/profile_view.dart';
import 'package:licensehome/feature/login/login_page.dart';
import 'package:licensehome/shared/model/resident.dart';
import 'package:licensehome/shared/service/fbnotification_service.dart';
import 'package:licensehome/shared/widget/guest_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('notifications')
        .snapshots()
        .listen((snapshot) {
      for (final change in snapshot.docChanges) {
        if (change.type == DocumentChangeType.added) {
          _showToast(change.doc.data() ?? {}, context);
        }
      }
    });
  }

  void _showToast(Map<String, dynamic> message, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${message['plate']} Giriş Yaptı')));
  }

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
            loaded: (resident, guests) {
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
                                GuestCard(resident: guests[index]),
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
