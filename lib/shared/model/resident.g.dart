// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResidentImpl _$$ResidentImplFromJson(Map<String, dynamic> json) =>
    _$ResidentImpl(
      id: json['id'] as String? ?? '',
      owner: json['owner'] as String? ?? '',
      isGuest: json['isGuest'] as bool? ?? false,
      guestOwner: json['guestOwner'] == null
          ? null
          : Resident.fromJson(json['guestOwner'] as Map<String, dynamic>),
      ownerSuit: json['ownerSuit'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      plate: json['plate'] as String? ?? '',
      type: $enumDecodeNullable(_$VehicleTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ResidentImplToJson(_$ResidentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'owner': instance.owner,
      'isGuest': instance.isGuest,
      'guestOwner': instance.guestOwner?.toJson(),
      'ownerSuit': instance.ownerSuit,
      'phone': instance.phone,
      'plate': instance.plate,
      'type': _$VehicleTypeEnumMap[instance.type],
    };

const _$VehicleTypeEnumMap = {
  VehicleType.motorcycle: 'motorcycle',
  VehicleType.car: 'car',
};
