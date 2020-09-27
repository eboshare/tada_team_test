import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';

part 'room.g.dart';

@JsonSerializable()
class RoomListResponse {
  @JsonKey(name: 'result')
  final List<Room> result;

  const RoomListResponse({
    @required this.result,
  });

  factory RoomListResponse.fromJson(Map<String, dynamic> json) => _$RoomListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RoomListResponseToJson(this);
}

@JsonSerializable()
class Room {
  @JsonKey(name: 'name')
  final String name;

  @JsonKey(name: 'last_message')
  final IncomingMessage lastMessage;

  const Room({
    @required this.name,
    @required this.lastMessage,
  });

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
