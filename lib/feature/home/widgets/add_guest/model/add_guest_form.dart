import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licensehome/shared/model/resident.dart';

part 'add_guest_form.freezed.dart';
part 'add_guest_form.g.dart';

@freezed
class AddGuestForm with _$AddGuestForm {
  factory AddGuestForm({
    required String plate,
    required String name,
    required String carType,
  }) = _AddGuestForm;

  factory AddGuestForm.fromJson(Map<String, dynamic> json) =>
      _$AddGuestFormFromJson(json);
}
