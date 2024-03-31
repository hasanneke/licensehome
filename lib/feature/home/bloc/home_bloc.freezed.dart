// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Resident resident) addGuest,
    required TResult Function(Guest guest) updateGuest,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Resident resident)? addGuest,
    TResult? Function(Guest guest)? updateGuest,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Resident resident)? addGuest,
    TResult Function(Guest guest)? updateGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddGuest value) addGuest,
    required TResult Function(_UpdateGuest value) updateGuest,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddGuest value)? addGuest,
    TResult? Function(_UpdateGuest value)? updateGuest,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddGuest value)? addGuest,
    TResult Function(_UpdateGuest value)? updateGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Resident resident) addGuest,
    required TResult Function(Guest guest) updateGuest,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Resident resident)? addGuest,
    TResult? Function(Guest guest)? updateGuest,
    TResult? Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Resident resident)? addGuest,
    TResult Function(Guest guest)? updateGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddGuest value) addGuest,
    required TResult Function(_UpdateGuest value) updateGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddGuest value)? addGuest,
    TResult? Function(_UpdateGuest value)? updateGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddGuest value)? addGuest,
    TResult Function(_UpdateGuest value)? updateGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddGuestImplCopyWith<$Res> {
  factory _$$AddGuestImplCopyWith(
          _$AddGuestImpl value, $Res Function(_$AddGuestImpl) then) =
      __$$AddGuestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Resident resident});

  $ResidentCopyWith<$Res> get resident;
}

/// @nodoc
class __$$AddGuestImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddGuestImpl>
    implements _$$AddGuestImplCopyWith<$Res> {
  __$$AddGuestImplCopyWithImpl(
      _$AddGuestImpl _value, $Res Function(_$AddGuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resident = null,
  }) {
    return _then(_$AddGuestImpl(
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResidentCopyWith<$Res> get resident {
    return $ResidentCopyWith<$Res>(_value.resident, (value) {
      return _then(_value.copyWith(resident: value));
    });
  }
}

/// @nodoc

class _$AddGuestImpl implements _AddGuest {
  const _$AddGuestImpl({required this.resident});

  @override
  final Resident resident;

  @override
  String toString() {
    return 'HomeEvent.addGuest(resident: $resident)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGuestImpl &&
            (identical(other.resident, resident) ||
                other.resident == resident));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resident);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGuestImplCopyWith<_$AddGuestImpl> get copyWith =>
      __$$AddGuestImplCopyWithImpl<_$AddGuestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Resident resident) addGuest,
    required TResult Function(Guest guest) updateGuest,
    required TResult Function() logout,
  }) {
    return addGuest(resident);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Resident resident)? addGuest,
    TResult? Function(Guest guest)? updateGuest,
    TResult? Function()? logout,
  }) {
    return addGuest?.call(resident);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Resident resident)? addGuest,
    TResult Function(Guest guest)? updateGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (addGuest != null) {
      return addGuest(resident);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddGuest value) addGuest,
    required TResult Function(_UpdateGuest value) updateGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return addGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddGuest value)? addGuest,
    TResult? Function(_UpdateGuest value)? updateGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return addGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddGuest value)? addGuest,
    TResult Function(_UpdateGuest value)? updateGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (addGuest != null) {
      return addGuest(this);
    }
    return orElse();
  }
}

abstract class _AddGuest implements HomeEvent {
  const factory _AddGuest({required final Resident resident}) = _$AddGuestImpl;

  Resident get resident;
  @JsonKey(ignore: true)
  _$$AddGuestImplCopyWith<_$AddGuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateGuestImplCopyWith<$Res> {
  factory _$$UpdateGuestImplCopyWith(
          _$UpdateGuestImpl value, $Res Function(_$UpdateGuestImpl) then) =
      __$$UpdateGuestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Guest guest});

  $GuestCopyWith<$Res> get guest;
}

/// @nodoc
class __$$UpdateGuestImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$UpdateGuestImpl>
    implements _$$UpdateGuestImplCopyWith<$Res> {
  __$$UpdateGuestImplCopyWithImpl(
      _$UpdateGuestImpl _value, $Res Function(_$UpdateGuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? guest = null,
  }) {
    return _then(_$UpdateGuestImpl(
      guest: null == guest
          ? _value.guest
          : guest // ignore: cast_nullable_to_non_nullable
              as Guest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GuestCopyWith<$Res> get guest {
    return $GuestCopyWith<$Res>(_value.guest, (value) {
      return _then(_value.copyWith(guest: value));
    });
  }
}

/// @nodoc

class _$UpdateGuestImpl implements _UpdateGuest {
  const _$UpdateGuestImpl({required this.guest});

  @override
  final Guest guest;

  @override
  String toString() {
    return 'HomeEvent.updateGuest(guest: $guest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateGuestImpl &&
            (identical(other.guest, guest) || other.guest == guest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, guest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateGuestImplCopyWith<_$UpdateGuestImpl> get copyWith =>
      __$$UpdateGuestImplCopyWithImpl<_$UpdateGuestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Resident resident) addGuest,
    required TResult Function(Guest guest) updateGuest,
    required TResult Function() logout,
  }) {
    return updateGuest(guest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Resident resident)? addGuest,
    TResult? Function(Guest guest)? updateGuest,
    TResult? Function()? logout,
  }) {
    return updateGuest?.call(guest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Resident resident)? addGuest,
    TResult Function(Guest guest)? updateGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (updateGuest != null) {
      return updateGuest(guest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddGuest value) addGuest,
    required TResult Function(_UpdateGuest value) updateGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return updateGuest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddGuest value)? addGuest,
    TResult? Function(_UpdateGuest value)? updateGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return updateGuest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddGuest value)? addGuest,
    TResult Function(_UpdateGuest value)? updateGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (updateGuest != null) {
      return updateGuest(this);
    }
    return orElse();
  }
}

abstract class _UpdateGuest implements HomeEvent {
  const factory _UpdateGuest({required final Guest guest}) = _$UpdateGuestImpl;

  Guest get guest;
  @JsonKey(ignore: true)
  _$$UpdateGuestImplCopyWith<_$UpdateGuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'HomeEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Resident resident) addGuest,
    required TResult Function(Guest guest) updateGuest,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Resident resident)? addGuest,
    TResult? Function(Guest guest)? updateGuest,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Resident resident)? addGuest,
    TResult Function(Guest guest)? updateGuest,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddGuest value) addGuest,
    required TResult Function(_UpdateGuest value) updateGuest,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddGuest value)? addGuest,
    TResult? Function(_UpdateGuest value)? updateGuest,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddGuest value)? addGuest,
    TResult Function(_UpdateGuest value)? updateGuest,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements HomeEvent {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Resident resident, List<Resident> residents)
        loaded,
    required TResult Function() exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Resident resident, List<Resident> residents)? loaded,
    TResult? Function()? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Resident resident, List<Resident> residents)? loaded,
    TResult Function()? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Exit value) exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Exit value)? exit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Resident resident, List<Resident> residents)
        loaded,
    required TResult Function() exit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Resident resident, List<Resident> residents)? loaded,
    TResult? Function()? exit,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Resident resident, List<Resident> residents)? loaded,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Exit value) exit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Exit value)? exit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Resident resident, List<Resident> residents});

  $ResidentCopyWith<$Res> get resident;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resident = null,
    Object? residents = null,
  }) {
    return _then(_$LoadedImpl(
      resident: null == resident
          ? _value.resident
          : resident // ignore: cast_nullable_to_non_nullable
              as Resident,
      residents: null == residents
          ? _value._residents
          : residents // ignore: cast_nullable_to_non_nullable
              as List<Resident>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ResidentCopyWith<$Res> get resident {
    return $ResidentCopyWith<$Res>(_value.resident, (value) {
      return _then(_value.copyWith(resident: value));
    });
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required this.resident, required final List<Resident> residents})
      : _residents = residents;

  @override
  final Resident resident;
  final List<Resident> _residents;
  @override
  List<Resident> get residents {
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residents);
  }

  @override
  String toString() {
    return 'HomeState.loaded(resident: $resident, residents: $residents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.resident, resident) ||
                other.resident == resident) &&
            const DeepCollectionEquality()
                .equals(other._residents, _residents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, resident, const DeepCollectionEquality().hash(_residents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Resident resident, List<Resident> residents)
        loaded,
    required TResult Function() exit,
  }) {
    return loaded(resident, residents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Resident resident, List<Resident> residents)? loaded,
    TResult? Function()? exit,
  }) {
    return loaded?.call(resident, residents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Resident resident, List<Resident> residents)? loaded,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(resident, residents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Exit value) exit,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Exit value)? exit,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements HomeState {
  const factory _Loaded(
      {required final Resident resident,
      required final List<Resident> residents}) = _$LoadedImpl;

  Resident get resident;
  List<Resident> get residents;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExitImplCopyWith<$Res> {
  factory _$$ExitImplCopyWith(
          _$ExitImpl value, $Res Function(_$ExitImpl) then) =
      __$$ExitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExitImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ExitImpl>
    implements _$$ExitImplCopyWith<$Res> {
  __$$ExitImplCopyWithImpl(_$ExitImpl _value, $Res Function(_$ExitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExitImpl implements _Exit {
  const _$ExitImpl();

  @override
  String toString() {
    return 'HomeState.exit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Resident resident, List<Resident> residents)
        loaded,
    required TResult Function() exit,
  }) {
    return exit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Resident resident, List<Resident> residents)? loaded,
    TResult? Function()? exit,
  }) {
    return exit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Resident resident, List<Resident> residents)? loaded,
    TResult Function()? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Exit value) exit,
  }) {
    return exit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Exit value)? exit,
  }) {
    return exit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Exit value)? exit,
    required TResult orElse(),
  }) {
    if (exit != null) {
      return exit(this);
    }
    return orElse();
  }
}

abstract class _Exit implements HomeState {
  const factory _Exit() = _$ExitImpl;
}
