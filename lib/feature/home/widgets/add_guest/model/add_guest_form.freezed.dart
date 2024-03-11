// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_guest_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddGuestForm _$AddGuestFormFromJson(Map<String, dynamic> json) {
  return _AddGuestForm.fromJson(json);
}

/// @nodoc
mixin _$AddGuestForm {
  String get plate => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get carType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddGuestFormCopyWith<AddGuestForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGuestFormCopyWith<$Res> {
  factory $AddGuestFormCopyWith(
          AddGuestForm value, $Res Function(AddGuestForm) then) =
      _$AddGuestFormCopyWithImpl<$Res, AddGuestForm>;
  @useResult
  $Res call({String plate, String name, String carType});
}

/// @nodoc
class _$AddGuestFormCopyWithImpl<$Res, $Val extends AddGuestForm>
    implements $AddGuestFormCopyWith<$Res> {
  _$AddGuestFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = null,
    Object? name = null,
    Object? carType = null,
  }) {
    return _then(_value.copyWith(
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGuestFormImplCopyWith<$Res>
    implements $AddGuestFormCopyWith<$Res> {
  factory _$$AddGuestFormImplCopyWith(
          _$AddGuestFormImpl value, $Res Function(_$AddGuestFormImpl) then) =
      __$$AddGuestFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String plate, String name, String carType});
}

/// @nodoc
class __$$AddGuestFormImplCopyWithImpl<$Res>
    extends _$AddGuestFormCopyWithImpl<$Res, _$AddGuestFormImpl>
    implements _$$AddGuestFormImplCopyWith<$Res> {
  __$$AddGuestFormImplCopyWithImpl(
      _$AddGuestFormImpl _value, $Res Function(_$AddGuestFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = null,
    Object? name = null,
    Object? carType = null,
  }) {
    return _then(_$AddGuestFormImpl(
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      carType: null == carType
          ? _value.carType
          : carType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddGuestFormImpl implements _AddGuestForm {
  _$AddGuestFormImpl(
      {required this.plate, required this.name, required this.carType});

  factory _$AddGuestFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddGuestFormImplFromJson(json);

  @override
  final String plate;
  @override
  final String name;
  @override
  final String carType;

  @override
  String toString() {
    return 'AddGuestForm(plate: $plate, name: $name, carType: $carType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGuestFormImpl &&
            (identical(other.plate, plate) || other.plate == plate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.carType, carType) || other.carType == carType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plate, name, carType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGuestFormImplCopyWith<_$AddGuestFormImpl> get copyWith =>
      __$$AddGuestFormImplCopyWithImpl<_$AddGuestFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddGuestFormImplToJson(
      this,
    );
  }
}

abstract class _AddGuestForm implements AddGuestForm {
  factory _AddGuestForm(
      {required final String plate,
      required final String name,
      required final String carType}) = _$AddGuestFormImpl;

  factory _AddGuestForm.fromJson(Map<String, dynamic> json) =
      _$AddGuestFormImpl.fromJson;

  @override
  String get plate;
  @override
  String get name;
  @override
  String get carType;
  @override
  @JsonKey(ignore: true)
  _$$AddGuestFormImplCopyWith<_$AddGuestFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
