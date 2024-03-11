// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resident.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Resident _$ResidentFromJson(Map<String, dynamic> json) {
  return _Resident.fromJson(json);
}

/// @nodoc
mixin _$Resident {
  String get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String get ownerSuit => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;
  VehicleType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidentCopyWith<Resident> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentCopyWith<$Res> {
  factory $ResidentCopyWith(Resident value, $Res Function(Resident) then) =
      _$ResidentCopyWithImpl<$Res, Resident>;
  @useResult
  $Res call(
      {String id,
      @TimestampConverter() @JsonKey(name: 'createDate') DateTime createdAt,
      String owner,
      String ownerSuit,
      String phone,
      String plate,
      VehicleType? type});
}

/// @nodoc
class _$ResidentCopyWithImpl<$Res, $Val extends Resident>
    implements $ResidentCopyWith<$Res> {
  _$ResidentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? owner = null,
    Object? ownerSuit = null,
    Object? phone = null,
    Object? plate = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ownerSuit: null == ownerSuit
          ? _value.ownerSuit
          : ownerSuit // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidentImplCopyWith<$Res>
    implements $ResidentCopyWith<$Res> {
  factory _$$ResidentImplCopyWith(
          _$ResidentImpl value, $Res Function(_$ResidentImpl) then) =
      __$$ResidentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @TimestampConverter() @JsonKey(name: 'createDate') DateTime createdAt,
      String owner,
      String ownerSuit,
      String phone,
      String plate,
      VehicleType? type});
}

/// @nodoc
class __$$ResidentImplCopyWithImpl<$Res>
    extends _$ResidentCopyWithImpl<$Res, _$ResidentImpl>
    implements _$$ResidentImplCopyWith<$Res> {
  __$$ResidentImplCopyWithImpl(
      _$ResidentImpl _value, $Res Function(_$ResidentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? owner = null,
    Object? ownerSuit = null,
    Object? phone = null,
    Object? plate = null,
    Object? type = freezed,
  }) {
    return _then(_$ResidentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      ownerSuit: null == ownerSuit
          ? _value.ownerSuit
          : ownerSuit // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VehicleType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentImpl extends _Resident {
  _$ResidentImpl(
      {this.id = '',
      @TimestampConverter()
      @JsonKey(name: 'createDate')
      required this.createdAt,
      this.owner = '',
      this.ownerSuit = '',
      this.phone = '',
      this.plate = '',
      this.type})
      : super._();

  factory _$ResidentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  final DateTime createdAt;
  @override
  @JsonKey()
  final String owner;
  @override
  @JsonKey()
  final String ownerSuit;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final String plate;
  @override
  final VehicleType? type;

  @override
  String toString() {
    return 'Resident(id: $id, createdAt: $createdAt, owner: $owner, ownerSuit: $ownerSuit, phone: $phone, plate: $plate, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.ownerSuit, ownerSuit) ||
                other.ownerSuit == ownerSuit) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.plate, plate) || other.plate == plate) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, owner, ownerSuit, phone, plate, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentImplCopyWith<_$ResidentImpl> get copyWith =>
      __$$ResidentImplCopyWithImpl<_$ResidentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentImplToJson(
      this,
    );
  }
}

abstract class _Resident extends Resident {
  factory _Resident(
      {final String id,
      @TimestampConverter()
      @JsonKey(name: 'createDate')
      required final DateTime createdAt,
      final String owner,
      final String ownerSuit,
      final String phone,
      final String plate,
      final VehicleType? type}) = _$ResidentImpl;
  _Resident._() : super._();

  factory _Resident.fromJson(Map<String, dynamic> json) =
      _$ResidentImpl.fromJson;

  @override
  String get id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  DateTime get createdAt;
  @override
  String get owner;
  @override
  String get ownerSuit;
  @override
  String get phone;
  @override
  String get plate;
  @override
  VehicleType? get type;
  @override
  @JsonKey(ignore: true)
  _$$ResidentImplCopyWith<_$ResidentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
