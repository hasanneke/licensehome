import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';

import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';

class AddGuest extends StatelessWidget {
  AddGuest({
    super.key,
    this.resident,
  });
  final _formKey = GlobalKey<FormBuilderState>();
  final Resident? resident;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Misafir Ekle'),
      content: Padding(
        padding: const EdgeInsets.all(16),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              FormBuilderTextField(
                name: 'plate',
                initialValue: resident?.plate,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                decoration: const InputDecoration(hintText: 'Plaka'),
              ),
              const Gap(8),
              FormBuilderTextField(
                name: 'owner',
                initialValue: resident?.owner,
                decoration: const InputDecoration(hintText: 'Misafir ismi'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              const Gap(8),
              FormBuilderDropdown(
                  name: 'carType',
                  initialValue: resident?.type,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  items: const [
                    DropdownMenuItem(
                      value: VehicleType.motorcycle,
                      child: Text(
                        'Motor',
                      ),
                    ),
                    DropdownMenuItem(
                      value: VehicleType.car,
                      child: Text(
                        'Araba',
                      ),
                    ),
                  ]),
              const Gap(8),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    _formKey.currentState!.save();
                    final value = _formKey.currentState?.value ?? {};

                    final form = Resident.fromJson(value);
                    if (resident == null) {
                      Navigator.of(context).pop(
                        Resident(
                          owner: form.owner,
                          plate: form.plate,
                          type: form.type,
                          isGuest: true,
                          guestOwner: Resident.test,
                        ),
                      );
                    } else {
                      final updatedGuest = resident!.copyWith(
                        owner: form.owner,
                        plate: form.plate,
                        type: form.type,
                      );
                      Navigator.of(context).pop(updatedGuest);
                    }
                  }
                },
                child: Text(resident == null ? 'Ekle' : 'Güncelle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
