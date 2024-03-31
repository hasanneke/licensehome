// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResidentNotification _$ResidentNotificationFromJson(Map<String, dynamic> json) {
  return _ResidentNotification.fromJson(json);
}

/// @nodoc
mixin _$ResidentNotification {
  String get plate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResidentNotificationCopyWith<ResidentNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResidentNotificationCopyWith<$Res> {
  factory $ResidentNotificationCopyWith(ResidentNotification value,
          $Res Function(ResidentNotification) then) =
      _$ResidentNotificationCopyWithImpl<$Res, ResidentNotification>;
  @useResult
  $Res call({String plate});
}

/// @nodoc
class _$ResidentNotificationCopyWithImpl<$Res,
        $Val extends ResidentNotification>
    implements $ResidentNotificationCopyWith<$Res> {
  _$ResidentNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = null,
  }) {
    return _then(_value.copyWith(
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResidentNotificationImplCopyWith<$Res>
    implements $ResidentNotificationCopyWith<$Res> {
  factory _$$ResidentNotificationImplCopyWith(_$ResidentNotificationImpl value,
          $Res Function(_$ResidentNotificationImpl) then) =
      __$$ResidentNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String plate});
}

/// @nodoc
class __$$ResidentNotificationImplCopyWithImpl<$Res>
    extends _$ResidentNotificationCopyWithImpl<$Res, _$ResidentNotificationImpl>
    implements _$$ResidentNotificationImplCopyWith<$Res> {
  __$$ResidentNotificationImplCopyWithImpl(_$ResidentNotificationImpl _value,
      $Res Function(_$ResidentNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plate = null,
  }) {
    return _then(_$ResidentNotificationImpl(
      plate: null == plate
          ? _value.plate
          : plate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResidentNotificationImpl implements _ResidentNotification {
  _$ResidentNotificationImpl({required this.plate});

  factory _$ResidentNotificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResidentNotificationImplFromJson(json);

  @override
  final String plate;

  @override
  String toString() {
    return 'ResidentNotification(plate: $plate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResidentNotificationImpl &&
            (identical(other.plate, plate) || other.plate == plate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, plate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResidentNotificationImplCopyWith<_$ResidentNotificationImpl>
      get copyWith =>
          __$$ResidentNotificationImplCopyWithImpl<_$ResidentNotificationImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResidentNotificationImplToJson(
      this,
    );
  }
}

abstract class _ResidentNotification implements ResidentNotification {
  factory _ResidentNotification({required final String plate}) =
      _$ResidentNotificationImpl;

  factory _ResidentNotification.fromJson(Map<String, dynamic> json) =
      _$ResidentNotificationImpl.fromJson;

  @override
  String get plate;
  @override
  @JsonKey(ignore: true)
  _$$ResidentNotificationImplCopyWith<_$ResidentNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
