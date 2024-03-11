import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:licensehome/shared/model/resident.dart';
import 'package:licensehome/shared/utility/timestamp_converter.dart';

part 'guest.freezed.dart';
part 'guest.g.dart';

@freezed
class Guest with _$Guest {
  factory Guest({
    @Default('') String id,
    @TimestampConverter()
    @JsonKey(name: 'createDate')
    required DateTime createdAt,
    required String plate,
    required Resident resident,
    String? name,
    @TimestampConverter() DateTime? enterTime,
    @TimestampConverter() DateTime? exitTime,
    String? type,
  }) = _Guest;

  factory Guest.fromJson(Map<String, dynamic> json) => _$GuestFromJson(json);
}
