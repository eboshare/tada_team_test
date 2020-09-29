// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'incoming_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
IncomingMessageListResponse _$IncomingMessageListResponseFromJson(
    Map<String, dynamic> json) {
  return _IncomingMessageListResponse.fromJson(json);
}

/// @nodoc
class _$IncomingMessageListResponseTearOff {
  const _$IncomingMessageListResponseTearOff();

// ignore: unused_element
  _IncomingMessageListResponse call(
      {@JsonKey(name: 'result') List<IncomingMessage> result,
      @JsonKey(name: 'error') String error}) {
    return _IncomingMessageListResponse(
      result: result,
      error: error,
    );
  }

// ignore: unused_element
  IncomingMessageListResponse fromJson(Map<String, Object> json) {
    return IncomingMessageListResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IncomingMessageListResponse = _$IncomingMessageListResponseTearOff();

/// @nodoc
mixin _$IncomingMessageListResponse {
  @JsonKey(name: 'result')
  List<IncomingMessage> get result;
  @JsonKey(name: 'error')
  String get error;

  Map<String, dynamic> toJson();
  $IncomingMessageListResponseCopyWith<IncomingMessageListResponse>
      get copyWith;
}

/// @nodoc
abstract class $IncomingMessageListResponseCopyWith<$Res> {
  factory $IncomingMessageListResponseCopyWith(
          IncomingMessageListResponse value,
          $Res Function(IncomingMessageListResponse) then) =
      _$IncomingMessageListResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'result') List<IncomingMessage> result,
      @JsonKey(name: 'error') String error});
}

/// @nodoc
class _$IncomingMessageListResponseCopyWithImpl<$Res>
    implements $IncomingMessageListResponseCopyWith<$Res> {
  _$IncomingMessageListResponseCopyWithImpl(this._value, this._then);

  final IncomingMessageListResponse _value;
  // ignore: unused_field
  final $Res Function(IncomingMessageListResponse) _then;

  @override
  $Res call({
    Object result = freezed,
    Object error = freezed,
  }) {
    return _then(_value.copyWith(
      result:
          result == freezed ? _value.result : result as List<IncomingMessage>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
abstract class _$IncomingMessageListResponseCopyWith<$Res>
    implements $IncomingMessageListResponseCopyWith<$Res> {
  factory _$IncomingMessageListResponseCopyWith(
          _IncomingMessageListResponse value,
          $Res Function(_IncomingMessageListResponse) then) =
      __$IncomingMessageListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'result') List<IncomingMessage> result,
      @JsonKey(name: 'error') String error});
}

/// @nodoc
class __$IncomingMessageListResponseCopyWithImpl<$Res>
    extends _$IncomingMessageListResponseCopyWithImpl<$Res>
    implements _$IncomingMessageListResponseCopyWith<$Res> {
  __$IncomingMessageListResponseCopyWithImpl(
      _IncomingMessageListResponse _value,
      $Res Function(_IncomingMessageListResponse) _then)
      : super(_value, (v) => _then(v as _IncomingMessageListResponse));

  @override
  _IncomingMessageListResponse get _value =>
      super._value as _IncomingMessageListResponse;

  @override
  $Res call({
    Object result = freezed,
    Object error = freezed,
  }) {
    return _then(_IncomingMessageListResponse(
      result:
          result == freezed ? _value.result : result as List<IncomingMessage>,
      error: error == freezed ? _value.error : error as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IncomingMessageListResponse implements _IncomingMessageListResponse {
  _$_IncomingMessageListResponse(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'error') this.error});

  factory _$_IncomingMessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_IncomingMessageListResponseFromJson(json);

  @override
  @JsonKey(name: 'result')
  final List<IncomingMessage> result;
  @override
  @JsonKey(name: 'error')
  final String error;

  @override
  String toString() {
    return 'IncomingMessageListResponse(result: $result, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncomingMessageListResponse &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(error);

  @override
  _$IncomingMessageListResponseCopyWith<_IncomingMessageListResponse>
      get copyWith => __$IncomingMessageListResponseCopyWithImpl<
          _IncomingMessageListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IncomingMessageListResponseToJson(this);
  }
}

abstract class _IncomingMessageListResponse
    implements IncomingMessageListResponse {
  factory _IncomingMessageListResponse(
      {@JsonKey(name: 'result') List<IncomingMessage> result,
      @JsonKey(name: 'error') String error}) = _$_IncomingMessageListResponse;

  factory _IncomingMessageListResponse.fromJson(Map<String, dynamic> json) =
      _$_IncomingMessageListResponse.fromJson;

  @override
  @JsonKey(name: 'result')
  List<IncomingMessage> get result;
  @override
  @JsonKey(name: 'error')
  String get error;
  @override
  _$IncomingMessageListResponseCopyWith<_IncomingMessageListResponse>
      get copyWith;
}

IncomingMessage _$IncomingMessageFromJson(Map<String, dynamic> json) {
  return _IncomingMessage.fromJson(json);
}

/// @nodoc
class _$IncomingMessageTearOff {
  const _$IncomingMessageTearOff();

// ignore: unused_element
  _IncomingMessage call(
      {@JsonKey(name: 'id')
          String id,
      @required
      @JsonKey(name: 'room')
          String roomName,
      @required
      @JsonKey(name: 'text')
          String text,
      @required
      @JsonKey(name: 'sender')
          Sender sender,
      @required
      @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
          DateTime createdAt}) {
    return _IncomingMessage(
      id: id,
      roomName: roomName,
      text: text,
      sender: sender,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  IncomingMessage fromJson(Map<String, Object> json) {
    return IncomingMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IncomingMessage = _$IncomingMessageTearOff();

/// @nodoc
mixin _$IncomingMessage {
  @JsonKey(name: 'id')
  String get id;
  @JsonKey(name: 'room')
  String get roomName;
  @JsonKey(name: 'text')
  String get text;
  @JsonKey(name: 'sender')
  Sender get sender;
  @JsonKey(
      name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
  DateTime get createdAt;

  Map<String, dynamic> toJson();
  $IncomingMessageCopyWith<IncomingMessage> get copyWith;
}

/// @nodoc
abstract class $IncomingMessageCopyWith<$Res> {
  factory $IncomingMessageCopyWith(
          IncomingMessage value, $Res Function(IncomingMessage) then) =
      _$IncomingMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'room')
          String roomName,
      @JsonKey(name: 'text')
          String text,
      @JsonKey(name: 'sender')
          Sender sender,
      @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
          DateTime createdAt});

  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class _$IncomingMessageCopyWithImpl<$Res>
    implements $IncomingMessageCopyWith<$Res> {
  _$IncomingMessageCopyWithImpl(this._value, this._then);

  final IncomingMessage _value;
  // ignore: unused_field
  final $Res Function(IncomingMessage) _then;

  @override
  $Res call({
    Object id = freezed,
    Object roomName = freezed,
    Object text = freezed,
    Object sender = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      text: text == freezed ? _value.text : text as String,
      sender: sender == freezed ? _value.sender : sender as Sender,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }

  @override
  $SenderCopyWith<$Res> get sender {
    if (_value.sender == null) {
      return null;
    }
    return $SenderCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$IncomingMessageCopyWith<$Res>
    implements $IncomingMessageCopyWith<$Res> {
  factory _$IncomingMessageCopyWith(
          _IncomingMessage value, $Res Function(_IncomingMessage) then) =
      __$IncomingMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String id,
      @JsonKey(name: 'room')
          String roomName,
      @JsonKey(name: 'text')
          String text,
      @JsonKey(name: 'sender')
          Sender sender,
      @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
          DateTime createdAt});

  @override
  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class __$IncomingMessageCopyWithImpl<$Res>
    extends _$IncomingMessageCopyWithImpl<$Res>
    implements _$IncomingMessageCopyWith<$Res> {
  __$IncomingMessageCopyWithImpl(
      _IncomingMessage _value, $Res Function(_IncomingMessage) _then)
      : super(_value, (v) => _then(v as _IncomingMessage));

  @override
  _IncomingMessage get _value => super._value as _IncomingMessage;

  @override
  $Res call({
    Object id = freezed,
    Object roomName = freezed,
    Object text = freezed,
    Object sender = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_IncomingMessage(
      id: id == freezed ? _value.id : id as String,
      roomName: roomName == freezed ? _value.roomName : roomName as String,
      text: text == freezed ? _value.text : text as String,
      sender: sender == freezed ? _value.sender : sender as Sender,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IncomingMessage implements _IncomingMessage {
  _$_IncomingMessage(
      {@JsonKey(name: 'id')
          this.id,
      @required
      @JsonKey(name: 'room')
          this.roomName,
      @required
      @JsonKey(name: 'text')
          this.text,
      @required
      @JsonKey(name: 'sender')
          this.sender,
      @required
      @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
          this.createdAt})
      : assert(roomName != null),
        assert(text != null),
        assert(sender != null),
        assert(createdAt != null);

  factory _$_IncomingMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_IncomingMessageFromJson(json);

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
  @JsonKey(name: 'sender')
  final Sender sender;
  @override
  @JsonKey(
      name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
  final DateTime createdAt;

  @override
  String toString() {
    return 'IncomingMessage(id: $id, roomName: $roomName, text: $text, sender: $sender, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncomingMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.roomName, roomName) ||
                const DeepCollectionEquality()
                    .equals(other.roomName, roomName)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(roomName) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$IncomingMessageCopyWith<_IncomingMessage> get copyWith =>
      __$IncomingMessageCopyWithImpl<_IncomingMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IncomingMessageToJson(this);
  }
}

abstract class _IncomingMessage implements IncomingMessage {
  factory _IncomingMessage(
      {@JsonKey(name: 'id')
          String id,
      @required
      @JsonKey(name: 'room')
          String roomName,
      @required
      @JsonKey(name: 'text')
          String text,
      @required
      @JsonKey(name: 'sender')
          Sender sender,
      @required
      @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
          DateTime createdAt}) = _$_IncomingMessage;

  factory _IncomingMessage.fromJson(Map<String, dynamic> json) =
      _$_IncomingMessage.fromJson;

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
  @JsonKey(name: 'sender')
  Sender get sender;
  @override
  @JsonKey(
      name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson)
  DateTime get createdAt;
  @override
  _$IncomingMessageCopyWith<_IncomingMessage> get copyWith;
}
