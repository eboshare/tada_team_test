import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';

part 'room.g.dart';
part 'room.freezed.dart';

@freezed
abstract class RoomListResponse with _$RoomListResponse {
  factory RoomListResponse({
    @JsonKey(name: 'result') @required List<Room> result,
  }) = _RoomListResponse;

  factory RoomListResponse.fromJson(Map<String, dynamic> json) => _$RoomListResponseFromJson(json);
}

@freezed
abstract class Room with _$Room {
  factory Room({
    @JsonKey(name: 'name') @required String name,
    @JsonKey(name: 'last_message') IncomingMessage lastMessage,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
  factory Room.create({@required name}) => _Room(name: name);
}
