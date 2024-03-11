// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuestImpl _$$GuestImplFromJson(Map<String, dynamic> json) => _$GuestImpl(
      id: json['id'] as String? ?? '',
      createdAt:
          const TimestampConverter().fromJson(json['createDate'] as Timestamp),
      plate: json['plate'] as String,
      resident: Resident.fromJson(json['resident'] as Map<String, dynamic>),
      name: json['name'] as String?,
      enterTime: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['enterTime'], const TimestampConverter().fromJson),
      exitTime: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['exitTime'], const TimestampConverter().fromJson),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$GuestImplToJson(_$GuestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createDate': const TimestampConverter().toJson(instance.createdAt),
      'plate': instance.plate,
      'resident': instance.resident.toJson(),
      'name': instance.name,
      'enterTime': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.enterTime, const TimestampConverter().toJson),
      'exitTime': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.exitTime, const TimestampConverter().toJson),
      'type': instance.type,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
