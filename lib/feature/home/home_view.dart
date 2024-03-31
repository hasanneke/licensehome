import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:licensehome/feature/home/bloc/home_bloc.dart';
import 'package:licensehome/feature/home/widgets/profile_view/profile_view.dart';
import 'package:licensehome/feature/login/login_page.dart';
import 'package:licensehome/shared/model/resident.dart';
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
        .collection('users')
        .where('guestOwner.id',
            isEqualTo: FirebaseAuth.instance.currentUser?.uid ?? '')
        .withConverter(
          fromFirestore: (snapshot, options) =>
              Resident.fromJson(snapshot.data() ?? {})
                  .copyWith(id: snapshot.id),
          toFirestore: (value, options) => value.toJson(),
        )
        .snapshots()
        .listen((snapshot) {
      for (final change in snapshot.docChanges) {
        if (change.type == DocumentChangeType.added ||
            change.type == DocumentChangeType.modified) {
          _showToast(change.doc.data(), context);
        }
      }
    });
  }

  void _showToast(Resident? resident, BuildContext context) {
    if (resident?.isRead == false && resident?.entryTime != null) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${resident?.plate} Giriş Yaptı')));
      FirebaseFirestore.instance.collection('users').doc(resident!.id).set(
          {'isRead': true},
          SetOptions(
            merge: true,
          ));
    }
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
