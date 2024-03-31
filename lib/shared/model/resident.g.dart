// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResidentImpl _$$ResidentImplFromJson(Map<String, dynamic> json) =>
    _$ResidentImpl(
      id: json['id'] as String? ?? '',
      enteredAt: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['enteredAt'], const TimestampConverter().fromJson),
      entryTime: json['entryTime'] as String?,
      owner: json['owner'] as String? ?? '',
      isGuest: json['isGuest'] as bool? ?? false,
      guestOwner: json['guestOwner'] == null
          ? null
          : Resident.fromJson(json['guestOwner'] as Map<String, dynamic>),
      ownerSuit: json['ownerSuit'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      plate: json['plate'] as String? ?? '',
      type: $enumDecodeNullable(_$VehicleTypeEnumMap, json['type']),
      isRead: json['isRead'] as bool? ?? true,
    );

Map<String, dynamic> _$$ResidentImplToJson(_$ResidentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enteredAt': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.enteredAt, const TimestampConverter().toJson),
      'entryTime': instance.entryTime,
      'owner': instance.owner,
      'isGuest': instance.isGuest,
      'guestOwner': instance.guestOwner?.toJson(),
      'ownerSuit': instance.ownerSuit,
      'phone': instance.phone,
      'plate': instance.plate,
      'type': _$VehicleTypeEnumMap[instance.type],
      'isRead': instance.isRead,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$VehicleTypeEnumMap = {
  VehicleType.motorcycle: 'motorcycle',
  VehicleType.car: 'car',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
