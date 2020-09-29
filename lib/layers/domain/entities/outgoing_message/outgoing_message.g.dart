// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outgoing_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OutgoingMessage _$_$_OutgoingMessageFromJson(Map<String, dynamic> json) {
  return _$_OutgoingMessage(
    id: json['id'] as String,
    roomName: json['room'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$_$_OutgoingMessageToJson(_$_OutgoingMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room': instance.roomName,
      'text': instance.text,
    };
