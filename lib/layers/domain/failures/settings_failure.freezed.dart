// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SettingsFailureTearOff {
  const _$SettingsFailureTearOff();

// ignore: unused_element
  UnknownSettingsFailure unknown() {
    return UnknownSettingsFailure();
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsFailure = _$SettingsFailureTearOff();

/// @nodoc
mixin _$SettingsFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(UnknownSettingsFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(UnknownSettingsFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SettingsFailureCopyWith<$Res> {
  factory $SettingsFailureCopyWith(
          SettingsFailure value, $Res Function(SettingsFailure) then) =
      _$SettingsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsFailureCopyWithImpl<$Res>
    implements $SettingsFailureCopyWith<$Res> {
  _$SettingsFailureCopyWithImpl(this._value, this._then);

  final SettingsFailure _value;
  // ignore: unused_field
  final $Res Function(SettingsFailure) _then;
}

/// @nodoc
abstract class $UnknownSettingsFailureCopyWith<$Res> {
  factory $UnknownSettingsFailureCopyWith(UnknownSettingsFailure value,
          $Res Function(UnknownSettingsFailure) then) =
      _$UnknownSettingsFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownSettingsFailureCopyWithImpl<$Res>
    extends _$SettingsFailureCopyWithImpl<$Res>
    implements $UnknownSettingsFailureCopyWith<$Res> {
  _$UnknownSettingsFailureCopyWithImpl(UnknownSettingsFailure _value,
      $Res Function(UnknownSettingsFailure) _then)
      : super(_value, (v) => _then(v as UnknownSettingsFailure));

  @override
  UnknownSettingsFailure get _value => super._value as UnknownSettingsFailure;
}

/// @nodoc
class _$UnknownSettingsFailure implements UnknownSettingsFailure {
  _$UnknownSettingsFailure();

  @override
  String toString() {
    return 'SettingsFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownSettingsFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
  }) {
    assert(unknown != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(UnknownSettingsFailure value),
  }) {
    assert(unknown != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(UnknownSettingsFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownSettingsFailure implements SettingsFailure {
  factory UnknownSettingsFailure() = _$UnknownSettingsFailure;
}
