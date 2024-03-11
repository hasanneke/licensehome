// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Guest _$GuestFromJson(Map<String, dynamic> json) {
  return _Guest.fromJson(json);
}

/// @nodoc
mixin _$Guest {
  String get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get plate => throw _privateConstructorUsedError;
  Resident get resident => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get enterTime => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get exitTime => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestCopyWith<Guest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestCopyWith<$Res> {
  factory $GuestCopyWith(Guest value, $Res Function(Guest) then) =
      _$GuestCopyWithImpl<$Res, Guest>;
  @useResult
  $Res call(
      {String id,
      @TimestampConverter() @JsonKey(name: 'createDate') DateTime createdAt,
      String plate,
      Resident resident,
      String? name,
      @TimestampConverter() DateTime? enterTime,
      @TimestampConverter() DateTime? exitTime,
      String? type});

  $ResidentCopyWith<$Res> get resident;
}

/// @nodoc
class _$GuestCopyWithImpl<$Res, $Val extends Guest>
    implements $GuestCopyWith<$Res> {
  _$GuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? plate = null,
    Object? resident = null,
    Object? name = freezed,
    Object? enterTime = freezed,
    Object? exitTime = freezed,
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
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enterTime: freezed == enterTime
          ? _value.enterTime
          : enterTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResidentCopyWith<$Res> get resident {
    return $ResidentCopyWith<$Res>(_value.resident, (value) {
      return _then(_value.copyWith(resident: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuestImplCopyWith<$Res> implements $GuestCopyWith<$Res> {
  factory _$$GuestImplCopyWith(
          _$GuestImpl value, $Res Function(_$GuestImpl) then) =
      __$$GuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @TimestampConverter() @JsonKey(name: 'createDate') DateTime createdAt,
      String plate,
      Resident resident,
      String? name,
      @TimestampConverter() DateTime? enterTime,
      @TimestampConverter() DateTime? exitTime,
      String? type});

  @override
  $ResidentCopyWith<$Res> get resident;
}

/// @nodoc
class __$$GuestImplCopyWithImpl<$Res>
    extends _$GuestCopyWithImpl<$Res, _$GuestImpl>
    implements _$$GuestImplCopyWith<$Res> {
  __$$GuestImplCopyWithImpl(
      _$GuestImpl _value, $Res Function(_$GuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? plate = null,
    Object? resident = null,
    Object? name = freezed,
    Object? enterTime = freezed,
    Object? exitTime = freezed,
    Object? type = freezed,
  }) {
    return _then(_$GuestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enterTime: freezed == enterTime
          ? _value.enterTime
          : enterTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exitTime: freezed == exitTime
          ? _value.exitTime
          : exitTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuestImpl implements _Guest {
  _$GuestImpl(
      {this.id = '',
      @TimestampConverter()
      @JsonKey(name: 'createDate')
      required this.createdAt,
      required this.plate,
      required this.resident,
      this.name,
      @TimestampConverter() this.enterTime,
      @TimestampConverter() this.exitTime,
      this.type});

  factory _$GuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuestImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  final DateTime createdAt;
  @override
  final String plate;
  @override
  final Resident resident;
  @override
  final String? name;
  @override
  @TimestampConverter()
  final DateTime? enterTime;
  @override
  @TimestampConverter()
  final DateTime? exitTime;
  @override
  final String? type;

  @override
  String toString() {
    return 'Guest(id: $id, createdAt: $createdAt, plate: $plate, resident: $resident, name: $name, enterTime: $enterTime, exitTime: $exitTime, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.plate, plate) || other.plate == plate) &&
            (identical(other.resident, resident) ||
                other.resident == resident) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enterTime, enterTime) ||
                other.enterTime == enterTime) &&
            (identical(other.exitTime, exitTime) ||
                other.exitTime == exitTime) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, plate, resident,
      name, enterTime, exitTime, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestImplCopyWith<_$GuestImpl> get copyWith =>
      __$$GuestImplCopyWithImpl<_$GuestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuestImplToJson(
      this,
    );
  }
}

abstract class _Guest implements Guest {
  factory _Guest(
      {final String id,
      @TimestampConverter()
      @JsonKey(name: 'createDate')
      required final DateTime createdAt,
      required final String plate,
      required final Resident resident,
      final String? name,
      @TimestampConverter() final DateTime? enterTime,
      @TimestampConverter() final DateTime? exitTime,
      final String? type}) = _$GuestImpl;

  factory _Guest.fromJson(Map<String, dynamic> json) = _$GuestImpl.fromJson;

  @override
  String get id;
  @override
  @TimestampConverter()
  @JsonKey(name: 'createDate')
  DateTime get createdAt;
  @override
  String get plate;
  @override
  Resident get resident;
  @override
  String? get name;
  @override
  @TimestampConverter()
  DateTime? get enterTime;
  @override
  @TimestampConverter()
  DateTime? get exitTime;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$GuestImplCopyWith<_$GuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
