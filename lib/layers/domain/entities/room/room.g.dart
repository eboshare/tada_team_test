// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoomListResponse _$_$_RoomListResponseFromJson(Map<String, dynamic> json) {
  return _$_RoomListResponse(
    result: (json['result'] as List)
        ?.map(
            (e) => e == null ? null : Room.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_RoomListResponseToJson(
        _$_RoomListResponse instance) =>
    <String, dynamic>{
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };

_$_Room _$_$_RoomFromJson(Map<String, dynamic> json) {
  return _$_Room(
    name: json['name'] as String,
    lastMessage: json['last_message'] == null
        ? null
        : IncomingMessage.fromJson(
            json['last_message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'name': instance.name,
      'last_message': instance.lastMessage?.toJson(),
    };
