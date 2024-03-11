import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:licensehome/feature/home/widgets/add_guest/model/add_guest_form.dart';

import 'package:licensehome/shared/model/guest.dart';
import 'package:licensehome/shared/model/resident.dart';

class AddGuest extends StatelessWidget {
  AddGuest({
    super.key,
    this.guest,
  });
  final _formKey = GlobalKey<FormBuilderState>();
  final Guest? guest;
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
                initialValue: guest?.plate,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                decoration: const InputDecoration(hintText: 'Plaka'),
              ),
              const Gap(8),
              FormBuilderTextField(
                name: 'name',
                initialValue: guest?.name,
                decoration: const InputDecoration(hintText: 'Misafir ismi'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              const Gap(8),
              FormBuilderDropdown(
                  name: 'carType',
                  initialValue: guest?.type ?? 'car',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  items: const [
                    DropdownMenuItem(
                      value: 'motorcycle',
                      child: Text(
                        'Motor',
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'car',
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

                    final form = AddGuestForm.fromJson(value);
                    if (guest == null) {
                      Navigator.of(context).pop(
                        Guest(
                          createdAt: DateTime.now(),
                          name: form.name,
                          plate: form.plate,
                          type: form.carType,
                          resident: Resident.test,
                        ),
                      );
                    } else {
                      final updatedGuest = guest!.copyWith(
                        name: form.name,
                        plate: form.plate,
                        type: form.carType,
                      );
                      Navigator.of(context).pop(updatedGuest);
                    }
                  }
                },
                child: Text(guest == null ? 'Ekle' : 'Güncelle'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
