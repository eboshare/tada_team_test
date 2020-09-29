// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'outgoing_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
OutgoingMessage _$OutgoingMessageFromJson(Map<String, dynamic> json) {
  return _OutgoingMessage.fromJson(json);
}

/// @nodoc
class _$OutgoingMessageTearOff {
  const _$OutgoingMessageTearOff();

// ignore: unused_element
  _OutgoingMessage call(
      {@required @JsonKey(name: 'id') String id,
      @required @JsonKey(name: 'room') String roomName,
      @required @JsonKey(name: 'text') String text}) {
    return _OutgoingMessage(
      id: id,
      roomName: roomName,
      text: text,
    );
  }

// ignore: unused_element
  OutgoingMessage fromJson(Map<String, Object> json) {
    return OutgoingMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OutgoingMessage = _$OutgoingMessageTearOff();

/// @nodoc
mixin _$OutgoingMessage {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'room')
  String get roomName;
  @JsonKey(name: 'text')
  String get text;

  Map<String, dynamic> toJson();
  $OutgoingMessageCopyWith<OutgoingMessage> get copyWith;
}

/// @nodoc
abstract class $OutgoingMessageCopyWith<$Res> {
  factory $OutgoingMessageCopyWith(
          OutgoingMessage value, $Res Function(OutgoingMessage) then) =
      _$OutgoingMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'room') String roomName,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class _$OutgoingMessageCopyWithImpl<$Res>
    implements $OutgoingMessageCopyWith<$Res> {
  _$OutgoingMessageCopyWithImpl(this._value, this._then);

  final OutgoingMessage _value;
  // ignore: unused_field
  final $Res Function(OutgoingMessage) _then;

  @override
  $Res call({
    Object id = freezed,
    Object roomName = freezed,
    Object text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

/// @nodoc
abstract class _$OutgoingMessageCopyWith<$Res>
    implements $OutgoingMessageCopyWith<$Res> {
  factory _$OutgoingMessageCopyWith(
          _OutgoingMessage value, $Res Function(_OutgoingMessage) then) =
      __$OutgoingMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'room') String roomName,
      @JsonKey(name: 'text') String text});
}

/// @nodoc
class __$OutgoingMessageCopyWithImpl<$Res>
    extends _$OutgoingMessageCopyWithImpl<$Res>
    implements _$OutgoingMessageCopyWith<$Res> {
  __$OutgoingMessageCopyWithImpl(
      _OutgoingMessage _value, $Res Function(_OutgoingMessage) _then)
      : super(_value, (v) => _then(v as _OutgoingMessage));

  @override
  _OutgoingMessage get _value => super._value as _OutgoingMessage;

  @override
  $Res call({
    Object id = freezed,
    Object roomName = freezed,
    Object text = freezed,
  }) {
    return _then(_OutgoingMessage(
      id: id == freezed ? _value.id : id as String,
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OutgoingMessage implements _OutgoingMessage {
  _$_OutgoingMessage(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'room') this.roomName,
      @required @JsonKey(name: 'text') this.text})
      : assert(id != null),
        assert(roomName != null),
        assert(text != null);

  factory _$_OutgoingMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_OutgoingMessageFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'room')
  final String roomName;
  @override
  @JsonKey(name: 'text')
  final String text;

  @override
  String toString() {
    return 'OutgoingMessage(id: $id, roomName: $roomName, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OutgoingMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roomName) ^
      const DeepCollectionEquality().hash(text);

  @override
  _$OutgoingMessageCopyWith<_OutgoingMessage> get copyWith =>
      __$OutgoingMessageCopyWithImpl<_OutgoingMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OutgoingMessageToJson(this);
  }
}

abstract class _OutgoingMessage implements OutgoingMessage {
  factory _OutgoingMessage(
      {@required @JsonKey(name: 'id') String id,
      @required @JsonKey(name: 'room') String roomName,
      @required @JsonKey(name: 'text') String text}) = _$_OutgoingMessage;

  factory _OutgoingMessage.fromJson(Map<String, dynamic> json) =
      _$_OutgoingMessage.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'room')
  String get roomName;
  @override
  @JsonKey(name: 'text')
  String get text;
  @override
  _$OutgoingMessageCopyWith<_OutgoingMessage> get copyWith;
}
