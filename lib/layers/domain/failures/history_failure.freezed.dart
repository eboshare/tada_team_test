// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'history_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ChatHistoryFailureTearOff {
  const _$ChatHistoryFailureTearOff();

// ignore: unused_element
  UnknownHistoryFailure unknown() {
    return UnknownHistoryFailure();
  }

// ignore: unused_element
  ChatRoomNotFoundFailure roomNotFound(String message) {
    return ChatRoomNotFoundFailure(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChatHistoryFailure = _$ChatHistoryFailureTearOff();

/// @nodoc
mixin _$ChatHistoryFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
    @required Result roomNotFound(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result roomNotFound(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(UnknownHistoryFailure value),
    @required Result roomNotFound(ChatRoomNotFoundFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(UnknownHistoryFailure value),
    Result roomNotFound(ChatRoomNotFoundFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ChatHistoryFailureCopyWith<$Res> {
  factory $ChatHistoryFailureCopyWith(
          ChatHistoryFailure value, $Res Function(ChatHistoryFailure) then) =
      _$ChatHistoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatHistoryFailureCopyWithImpl<$Res>
    implements $ChatHistoryFailureCopyWith<$Res> {
  _$ChatHistoryFailureCopyWithImpl(this._value, this._then);

  final ChatHistoryFailure _value;
  // ignore: unused_field
  final $Res Function(ChatHistoryFailure) _then;
}

/// @nodoc
abstract class $UnknownHistoryFailureCopyWith<$Res> {
  factory $UnknownHistoryFailureCopyWith(UnknownHistoryFailure value,
          $Res Function(UnknownHistoryFailure) then) =
      _$UnknownHistoryFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownHistoryFailureCopyWithImpl<$Res>
    extends _$ChatHistoryFailureCopyWithImpl<$Res>
    implements $UnknownHistoryFailureCopyWith<$Res> {
  _$UnknownHistoryFailureCopyWithImpl(
      UnknownHistoryFailure _value, $Res Function(UnknownHistoryFailure) _then)
      : super(_value, (v) => _then(v as UnknownHistoryFailure));

  @override
  UnknownHistoryFailure get _value => super._value as UnknownHistoryFailure;
}

/// @nodoc
class _$UnknownHistoryFailure implements UnknownHistoryFailure {
  _$UnknownHistoryFailure();

  @override
  String toString() {
    return 'ChatHistoryFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownHistoryFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
    @required Result roomNotFound(String message),
  }) {
    assert(unknown != null);
    assert(roomNotFound != null);
    return unknown();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result roomNotFound(String message),
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
    @required Result unknown(UnknownHistoryFailure value),
    @required Result roomNotFound(ChatRoomNotFoundFailure value),
  }) {
    assert(unknown != null);
    assert(roomNotFound != null);
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(UnknownHistoryFailure value),
    Result roomNotFound(ChatRoomNotFoundFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownHistoryFailure implements ChatHistoryFailure {
  factory UnknownHistoryFailure() = _$UnknownHistoryFailure;
}

/// @nodoc
abstract class $ChatRoomNotFoundFailureCopyWith<$Res> {
  factory $ChatRoomNotFoundFailureCopyWith(ChatRoomNotFoundFailure value,
          $Res Function(ChatRoomNotFoundFailure) then) =
      _$ChatRoomNotFoundFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ChatRoomNotFoundFailureCopyWithImpl<$Res>
    extends _$ChatHistoryFailureCopyWithImpl<$Res>
    implements $ChatRoomNotFoundFailureCopyWith<$Res> {
  _$ChatRoomNotFoundFailureCopyWithImpl(ChatRoomNotFoundFailure _value,
      $Res Function(ChatRoomNotFoundFailure) _then)
      : super(_value, (v) => _then(v as ChatRoomNotFoundFailure));

  @override
  ChatRoomNotFoundFailure get _value => super._value as ChatRoomNotFoundFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ChatRoomNotFoundFailure(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ChatRoomNotFoundFailure implements ChatRoomNotFoundFailure {
  _$ChatRoomNotFoundFailure(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatHistoryFailure.roomNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChatRoomNotFoundFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $ChatRoomNotFoundFailureCopyWith<ChatRoomNotFoundFailure> get copyWith =>
      _$ChatRoomNotFoundFailureCopyWithImpl<ChatRoomNotFoundFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unknown(),
    @required Result roomNotFound(String message),
  }) {
    assert(unknown != null);
    assert(roomNotFound != null);
    return roomNotFound(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unknown(),
    Result roomNotFound(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (roomNotFound != null) {
      return roomNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unknown(UnknownHistoryFailure value),
    @required Result roomNotFound(ChatRoomNotFoundFailure value),
  }) {
    assert(unknown != null);
    assert(roomNotFound != null);
    return roomNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unknown(UnknownHistoryFailure value),
    Result roomNotFound(ChatRoomNotFoundFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (roomNotFound != null) {
      return roomNotFound(this);
    }
    return orElse();
  }
}

abstract class ChatRoomNotFoundFailure implements ChatHistoryFailure {
  factory ChatRoomNotFoundFailure(String message) = _$ChatRoomNotFoundFailure;

  String get message;
  $ChatRoomNotFoundFailureCopyWith<ChatRoomNotFoundFailure> get copyWith;
}
