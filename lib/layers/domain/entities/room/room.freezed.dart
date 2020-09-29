// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RoomListResponse _$RoomListResponseFromJson(Map<String, dynamic> json) {
  return _RoomListResponse.fromJson(json);
}

/// @nodoc
class _$RoomListResponseTearOff {
  const _$RoomListResponseTearOff();

// ignore: unused_element
  _RoomListResponse call(
      {@required @JsonKey(name: 'result') List<Room> result}) {
    return _RoomListResponse(
      result: result,
    );
  }

// ignore: unused_element
  RoomListResponse fromJson(Map<String, Object> json) {
    return RoomListResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RoomListResponse = _$RoomListResponseTearOff();

/// @nodoc
mixin _$RoomListResponse {
  @JsonKey(name: 'result')
  List<Room> get result;

  Map<String, dynamic> toJson();
  $RoomListResponseCopyWith<RoomListResponse> get copyWith;
}

/// @nodoc
abstract class $RoomListResponseCopyWith<$Res> {
  factory $RoomListResponseCopyWith(
          RoomListResponse value, $Res Function(RoomListResponse) then) =
      _$RoomListResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'result') List<Room> result});
}

/// @nodoc
class _$RoomListResponseCopyWithImpl<$Res>
    implements $RoomListResponseCopyWith<$Res> {
  _$RoomListResponseCopyWithImpl(this._value, this._then);

  final RoomListResponse _value;
  // ignore: unused_field
  final $Res Function(RoomListResponse) _then;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed ? _value.result : result as List<Room>,
    ));
  }
}

/// @nodoc
abstract class _$RoomListResponseCopyWith<$Res>
    implements $RoomListResponseCopyWith<$Res> {
  factory _$RoomListResponseCopyWith(
          _RoomListResponse value, $Res Function(_RoomListResponse) then) =
      __$RoomListResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'result') List<Room> result});
}

/// @nodoc
class __$RoomListResponseCopyWithImpl<$Res>
    extends _$RoomListResponseCopyWithImpl<$Res>
    implements _$RoomListResponseCopyWith<$Res> {
  __$RoomListResponseCopyWithImpl(
      _RoomListResponse _value, $Res Function(_RoomListResponse) _then)
      : super(_value, (v) => _then(v as _RoomListResponse));

  @override
  _RoomListResponse get _value => super._value as _RoomListResponse;

  @override
  $Res call({
    Object result = freezed,
  }) {
    return _then(_RoomListResponse(
      result: result == freezed ? _value.result : result as List<Room>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RoomListResponse implements _RoomListResponse {
  _$_RoomListResponse({@required @JsonKey(name: 'result') this.result})
      : assert(result != null);

  factory _$_RoomListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomListResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final List<Room> result;

  @override
  String toString() {
    return 'RoomListResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RoomListResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(result);

  @override
  _$RoomListResponseCopyWith<_RoomListResponse> get copyWith =>
      __$RoomListResponseCopyWithImpl<_RoomListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomListResponseToJson(this);
  }
}

abstract class _RoomListResponse implements RoomListResponse {
  factory _RoomListResponse(
          {@required @JsonKey(name: 'result') List<Room> result}) =
      _$_RoomListResponse;

  factory _RoomListResponse.fromJson(Map<String, dynamic> json) =
      _$_RoomListResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  List<Room> get result;
  @override
  _$RoomListResponseCopyWith<_RoomListResponse> get copyWith;
}

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
class _$RoomTearOff {
  const _$RoomTearOff();

// ignore: unused_element
  _Room call(
      {@required @JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_message') IncomingMessage lastMessage}) {
    return _Room(
      name: name,
      lastMessage: lastMessage,
    );
  }

// ignore: unused_element
  Room fromJson(Map<String, Object> json) {
    return Room.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Room = _$RoomTearOff();

/// @nodoc
mixin _$Room {
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'last_message')
  IncomingMessage get lastMessage;

  Map<String, dynamic> toJson();
  $RoomCopyWith<Room> get copyWith;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_message') IncomingMessage lastMessage});

  $IncomingMessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res> implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  final Room _value;
  // ignore: unused_field
  final $Res Function(Room) _then;

  @override
  $Res call({
    Object name = freezed,
    Object lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as IncomingMessage,
    ));
  }

  @override
  $IncomingMessageCopyWith<$Res> get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }
    return $IncomingMessageCopyWith<$Res>(_value.lastMessage, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$RoomCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$RoomCopyWith(_Room value, $Res Function(_Room) then) =
      __$RoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_message') IncomingMessage lastMessage});

  @override
  $IncomingMessageCopyWith<$Res> get lastMessage;
}

/// @nodoc
class __$RoomCopyWithImpl<$Res> extends _$RoomCopyWithImpl<$Res>
    implements _$RoomCopyWith<$Res> {
  __$RoomCopyWithImpl(_Room _value, $Res Function(_Room) _then)
      : super(_value, (v) => _then(v as _Room));

  @override
  _Room get _value => super._value as _Room;

  @override
  $Res call({
    Object name = freezed,
    Object lastMessage = freezed,
  }) {
    return _then(_Room(
      name: name == freezed ? _value.name : name as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage as IncomingMessage,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Room implements _Room {
  _$_Room(
      {@required @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'last_message') this.lastMessage})
      : assert(name != null);

  factory _$_Room.fromJson(Map<String, dynamic> json) =>
      _$_$_RoomFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'last_message')
  final IncomingMessage lastMessage;

  @override
  String toString() {
    return 'Room(name: $name, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Room &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastMessage);

  @override
  _$RoomCopyWith<_Room> get copyWith =>
      __$RoomCopyWithImpl<_Room>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RoomToJson(this);
  }
}

abstract class _Room implements Room {
  factory _Room(
      {@required @JsonKey(name: 'name') String name,
      @JsonKey(name: 'last_message') IncomingMessage lastMessage}) = _$_Room;

  factory _Room.fromJson(Map<String, dynamic> json) = _$_Room.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'last_message')
  IncomingMessage get lastMessage;
  @override
  _$RoomCopyWith<_Room> get copyWith;
}
