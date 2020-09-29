// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SettingsResponse _$SettingsResponseFromJson(Map<String, dynamic> json) {
  return _SettingsResponse.fromJson(json);
}

/// @nodoc
class _$SettingsResponseTearOff {
  const _$SettingsResponseTearOff();

// ignore: unused_element
  _SettingsResponse call({@JsonKey(name: 'result') Settings result}) {
    return _SettingsResponse(
      result: result,
    );
  }

// ignore: unused_element
  SettingsResponse fromJson(Map<String, Object> json) {
    return SettingsResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SettingsResponse = _$SettingsResponseTearOff();

/// @nodoc
mixin _$SettingsResponse {
  @JsonKey(name: 'result')
  Settings get result;

  Map<String, dynamic> toJson();
  $SettingsResponseCopyWith<SettingsResponse> get copyWith;
}

/// @nodoc
abstract class $SettingsResponseCopyWith<$Res> {
  factory $SettingsResponseCopyWith(
          SettingsResponse value, $Res Function(SettingsResponse) then) =
      _$SettingsResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'result') Settings result});

  $SettingsCopyWith<$Res> get result;
}

/// @nodoc
class _$SettingsResponseCopyWithImpl<$Res>
    implements $SettingsResponseCopyWith<$Res> {
  _$SettingsResponseCopyWithImpl(this._value, this._then);

  final SettingsResponse _value;
  // ignore: unused_field
  final $Res Function(SettingsResponse) _then;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as Settings,
    ));
  }

  @override
  $SettingsCopyWith<$Res> get result {
    if (_value.result == null) {
      return null;
    }
    return $SettingsCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc
abstract class _$SettingsResponseCopyWith<$Res>
    implements $SettingsResponseCopyWith<$Res> {
  factory _$SettingsResponseCopyWith(
          _SettingsResponse value, $Res Function(_SettingsResponse) then) =
      __$SettingsResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'result') Settings result});

  @override
  $SettingsCopyWith<$Res> get result;
}

/// @nodoc
class __$SettingsResponseCopyWithImpl<$Res>
    extends _$SettingsResponseCopyWithImpl<$Res>
    implements _$SettingsResponseCopyWith<$Res> {
  __$SettingsResponseCopyWithImpl(
      _SettingsResponse _value, $Res Function(_SettingsResponse) _then)
      : super(_value, (v) => _then(v as _SettingsResponse));

  @override
  _SettingsResponse get _value => super._value as _SettingsResponse;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_SettingsResponse(
      result: result == freezed ? _value.result : result as Settings,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SettingsResponse implements _SettingsResponse {
  _$_SettingsResponse({@JsonKey(name: 'result') this.result});

  factory _$_SettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final Settings result;

  @override
  String toString() {
    return 'SettingsResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$SettingsResponseCopyWith<_SettingsResponse> get copyWith =>
      __$SettingsResponseCopyWithImpl<_SettingsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsResponseToJson(this);
  }
}

abstract class _SettingsResponse implements SettingsResponse {
  factory _SettingsResponse({@JsonKey(name: 'result') Settings result}) =
      _$_SettingsResponse;

  factory _SettingsResponse.fromJson(Map<String, dynamic> json) =
      _$_SettingsResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  Settings get result;
  @override
  _$SettingsResponseCopyWith<_SettingsResponse> get copyWith;
}

Settings _$SettingsFromJson(Map<String, dynamic> json) {
  return _Settings.fromJson(json);
}

/// @nodoc
class _$SettingsTearOff {
  const _$SettingsTearOff();

// ignore: unused_element
  _Settings call(
      {@JsonKey(name: 'max_message_length') int maxMessageLength,
      @JsonKey(name: 'max_room_title_length') int maxRoomTitleLength,
      @JsonKey(name: 'max_username_length') int maxUsernameLength,
      @JsonKey(name: 'uptime') int uptime}) {
    return _Settings(
      maxMessageLength: maxMessageLength,
      maxRoomTitleLength: maxRoomTitleLength,
      maxUsernameLength: maxUsernameLength,
      uptime: uptime,
    );
  }

// ignore: unused_element
  Settings fromJson(Map<String, Object> json) {
    return Settings.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Settings = _$SettingsTearOff();

/// @nodoc
mixin _$Settings {
  @JsonKey(name: 'max_message_length')
  int get maxMessageLength;
  @JsonKey(name: 'max_room_title_length')
  int get maxRoomTitleLength;
  @JsonKey(name: 'max_username_length')
  int get maxUsernameLength;
  @JsonKey(name: 'uptime')
  int get uptime;

  Map<String, dynamic> toJson();
  $SettingsCopyWith<Settings> get copyWith;
}

/// @nodoc
abstract class $SettingsCopyWith<$Res> {
  factory $SettingsCopyWith(Settings value, $Res Function(Settings) then) =
      _$SettingsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'max_message_length') int maxMessageLength,
      @JsonKey(name: 'max_room_title_length') int maxRoomTitleLength,
      @JsonKey(name: 'max_username_length') int maxUsernameLength,
      @JsonKey(name: 'uptime') int uptime});
}

/// @nodoc
class _$SettingsCopyWithImpl<$Res> implements $SettingsCopyWith<$Res> {
  _$SettingsCopyWithImpl(this._value, this._then);

  final Settings _value;
  // ignore: unused_field
  final $Res Function(Settings) _then;

  @override
  $Res call({
    Object maxMessageLength = freezed,
    Object maxRoomTitleLength = freezed,
    Object maxUsernameLength = freezed,
    Object uptime = freezed,
  }) {
    return _then(_value.copyWith(
      maxMessageLength: maxMessageLength == freezed
          ? _value.maxMessageLength
          : maxMessageLength as int,
      maxRoomTitleLength: maxRoomTitleLength == freezed
          ? _value.maxRoomTitleLength
          : maxRoomTitleLength as int,
      maxUsernameLength: maxUsernameLength == freezed
          ? _value.maxUsernameLength
          : maxUsernameLength as int,
      uptime: uptime == freezed ? _value.uptime : uptime as int,
    ));
  }
}

/// @nodoc
abstract class _$SettingsCopyWith<$Res> implements $SettingsCopyWith<$Res> {
  factory _$SettingsCopyWith(_Settings value, $Res Function(_Settings) then) =
      __$SettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'max_message_length') int maxMessageLength,
      @JsonKey(name: 'max_room_title_length') int maxRoomTitleLength,
      @JsonKey(name: 'max_username_length') int maxUsernameLength,
      @JsonKey(name: 'uptime') int uptime});
}

/// @nodoc
class __$SettingsCopyWithImpl<$Res> extends _$SettingsCopyWithImpl<$Res>
    implements _$SettingsCopyWith<$Res> {
  __$SettingsCopyWithImpl(_Settings _value, $Res Function(_Settings) _then)
      : super(_value, (v) => _then(v as _Settings));

  @override
  _Settings get _value => super._value as _Settings;

  @override
  $Res call({
    Object maxMessageLength = freezed,
    Object maxRoomTitleLength = freezed,
    Object maxUsernameLength = freezed,
    Object uptime = freezed,
  }) {
    return _then(_Settings(
      maxMessageLength: maxMessageLength == freezed
          ? _value.maxMessageLength
          : maxMessageLength as int,
      maxRoomTitleLength: maxRoomTitleLength == freezed
          ? _value.maxRoomTitleLength
          : maxRoomTitleLength as int,
      maxUsernameLength: maxUsernameLength == freezed
          ? _value.maxUsernameLength
          : maxUsernameLength as int,
      uptime: uptime == freezed ? _value.uptime : uptime as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Settings implements _Settings {
  _$_Settings(
      {@JsonKey(name: 'max_message_length') this.maxMessageLength,
      @JsonKey(name: 'max_room_title_length') this.maxRoomTitleLength,
      @JsonKey(name: 'max_username_length') this.maxUsernameLength,
      @JsonKey(name: 'uptime') this.uptime});

  factory _$_Settings.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsFromJson(json);

  @override
  @JsonKey(name: 'max_message_length')
  final int maxMessageLength;
  @override
  @JsonKey(name: 'max_room_title_length')
  final int maxRoomTitleLength;
  @override
  @JsonKey(name: 'max_username_length')
  final int maxUsernameLength;
  @override
  @JsonKey(name: 'uptime')
  final int uptime;

  @override
  String toString() {
    return 'Settings(maxMessageLength: $maxMessageLength, maxRoomTitleLength: $maxRoomTitleLength, maxUsernameLength: $maxUsernameLength, uptime: $uptime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Settings &&
            (identical(other.maxMessageLength, maxMessageLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxMessageLength, maxMessageLength)) &&
            (identical(other.maxRoomTitleLength, maxRoomTitleLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxRoomTitleLength, maxRoomTitleLength)) &&
            (identical(other.maxUsernameLength, maxUsernameLength) ||
                const DeepCollectionEquality()
                    .equals(other.maxUsernameLength, maxUsernameLength)) &&
            (identical(other.uptime, uptime) ||
                const DeepCollectionEquality().equals(other.uptime, uptime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(maxMessageLength) ^
      const DeepCollectionEquality().hash(maxRoomTitleLength) ^
      const DeepCollectionEquality().hash(maxUsernameLength) ^
      const DeepCollectionEquality().hash(uptime);

  @override
  _$SettingsCopyWith<_Settings> get copyWith =>
      __$SettingsCopyWithImpl<_Settings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsToJson(this);
  }
}

abstract class _Settings implements Settings {
  factory _Settings(
      {@JsonKey(name: 'max_message_length') int maxMessageLength,
      @JsonKey(name: 'max_room_title_length') int maxRoomTitleLength,
      @JsonKey(name: 'max_username_length') int maxUsernameLength,
      @JsonKey(name: 'uptime') int uptime}) = _$_Settings;

  factory _Settings.fromJson(Map<String, dynamic> json) = _$_Settings.fromJson;

  @override
  @JsonKey(name: 'max_message_length')
  int get maxMessageLength;
  @override
  @JsonKey(name: 'max_room_title_length')
  int get maxRoomTitleLength;
  @override
  @JsonKey(name: 'max_username_length')
  int get maxUsernameLength;
  @override
  @JsonKey(name: 'uptime')
  int get uptime;
  @override
  _$SettingsCopyWith<_Settings> get copyWith;
}
