// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Sender _$SenderFromJson(Map<String, dynamic> json) {
  return _Sender.fromJson(json);
}

/// @nodoc
class _$SenderTearOff {
  const _$SenderTearOff();

// ignore: unused_element
  _Sender call({@required @JsonKey(name: 'username') String username}) {
    return _Sender(
      username: username,
    );
  }

// ignore: unused_element
  Sender fromJson(Map<String, Object> json) {
    return Sender.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Sender = _$SenderTearOff();

/// @nodoc
mixin _$Sender {
  @JsonKey(name: 'username')
  String get username;

  Map<String, dynamic> toJson();
  $SenderCopyWith<Sender> get copyWith;
}

/// @nodoc
abstract class $SenderCopyWith<$Res> {
  factory $SenderCopyWith(Sender value, $Res Function(Sender) then) =
      _$SenderCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class _$SenderCopyWithImpl<$Res> implements $SenderCopyWith<$Res> {
  _$SenderCopyWithImpl(this._value, this._then);

  final Sender _value;
  // ignore: unused_field
  final $Res Function(Sender) _then;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
abstract class _$SenderCopyWith<$Res> implements $SenderCopyWith<$Res> {
  factory _$SenderCopyWith(_Sender value, $Res Function(_Sender) then) =
      __$SenderCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'username') String username});
}

/// @nodoc
class __$SenderCopyWithImpl<$Res> extends _$SenderCopyWithImpl<$Res>
    implements _$SenderCopyWith<$Res> {
  __$SenderCopyWithImpl(_Sender _value, $Res Function(_Sender) _then)
      : super(_value, (v) => _then(v as _Sender));

  @override
  _Sender get _value => super._value as _Sender;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_Sender(
      username: username == freezed ? _value.username : username as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Sender implements _Sender {
  _$_Sender({@required @JsonKey(name: 'username') this.username})
      : assert(username != null);

  factory _$_Sender.fromJson(Map<String, dynamic> json) =>
      _$_$_SenderFromJson(json);

  @override
  @JsonKey(name: 'username')
  final String username;

  @override
  String toString() {
    return 'Sender(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Sender &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @override
  _$SenderCopyWith<_Sender> get copyWith =>
      __$SenderCopyWithImpl<_Sender>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SenderToJson(this);
  }
}

abstract class _Sender implements Sender {
  factory _Sender({@required @JsonKey(name: 'username') String username}) =
      _$_Sender;

  factory _Sender.fromJson(Map<String, dynamic> json) = _$_Sender.fromJson;

  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  _$SenderCopyWith<_Sender> get copyWith;
}
