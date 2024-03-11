import 'package:flutter/material.dart';

import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';
import 'package:licensehome/shared/widget/guest_card.dart';

class GuestHistoryPage extends StatelessWidget {
  const GuestHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş Misafirlerim'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: 5,
        itemBuilder: (context, index) => GuestCard(
          guest: Guest(
            createdAt: DateTime.now(),
            plate: '34 AKA 188',
            resident: Resident.test,
          ),
        ),
      ),
    );
  }
}
