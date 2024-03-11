import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licensehome/shared/utility/timestamp_converter.dart';

part 'resident.freezed.dart';
part 'resident.g.dart';

@freezed
class Resident with _$Resident {
  const Resident._();
  factory Resident({
    @Default('') String id,
    @TimestampConverter()
    @JsonKey(name: 'createDate')
    required DateTime createdAt,
    @Default('') String owner,
    @Default('') String ownerSuit,
    @Default('') String phone,
    @Default('') String plate,
    VehicleType? type,
  }) = _Resident;

  factory Resident.fromJson(Map<String, dynamic> json) =>
      _$ResidentFromJson(json);
  static Resident get test => Resident(
        id: '000000',
        createdAt: DateTime.now(),
        owner: 'Hasan Eke',
        ownerSuit: 'Pirirreis mah.',
        phone: '5511235471',
        plate: '34 AF 244',
        type: VehicleType.car,
      );
}

enum VehicleType {
  motorcycle,
  car;
}
