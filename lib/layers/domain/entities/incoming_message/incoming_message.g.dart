// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incoming_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IncomingMessageListResponse _$_$_IncomingMessageListResponseFromJson(
    Map<String, dynamic> json) {
  return _$_IncomingMessageListResponse(
    result: (json['result'] as List)
        ?.map((e) => e == null
            ? null
            : IncomingMessage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    error: json['error'] as String,
  );
}

Map<String, dynamic> _$_$_IncomingMessageListResponseToJson(
        _$_IncomingMessageListResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
      'error': instance.error,
    };

_$_IncomingMessage _$_$_IncomingMessageFromJson(Map<String, dynamic> json) {
  return _$_IncomingMessage(
    id: json['id'] as String,
    roomName: json['room'] as String,
    text: json['text'] as String,
    sender: json['sender'] == null
        ? null
        : Sender.fromJson(json['sender'] as Map<String, dynamic>),
    createdAt: isoDateTimeFromJson(json['created'] as String),
  );
}

Map<String, dynamic> _$_$_IncomingMessageToJson(_$_IncomingMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room': instance.roomName,
      'text': instance.text,
      'sender': instance.sender?.toJson(),
      'created': isoDateToJson(instance.createdAt),
    };
