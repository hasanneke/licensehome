import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GuestDetailDialog extends StatelessWidget {
  const GuestDetailDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Misafiri Düzenle'),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Plaka'),
          ),
          Gap(6),
          TextField(
            decoration: InputDecoration(hintText: 'İsim-soyisim'),
          ),
          Gap(6),
          TextField(
            decoration: InputDecoration(hintText: 'Telefon numarası'),
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Kaydet'),
        ),
      ],
    );
  }
}
