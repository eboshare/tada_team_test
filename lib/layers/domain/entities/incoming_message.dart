import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:tada_team_test/layers/domain/entities/sender.dart';

part 'incoming_message.g.dart';

@JsonSerializable()
class IncomingMessage {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'room')
  final String room;

  @JsonKey(name: 'text')
  final String text;

  @JsonKey(name: 'created')
  final String createdAt;

  @JsonKey(name: 'sender')
  final Sender sender;

  const IncomingMessage({
    @required this.id,
    @required this.room,
    @required this.text,
    @required this.createdAt,
    @required this.sender,
  });

  factory IncomingMessage.fromJson(Map<String, dynamic> json) => _$IncomingMessageFromJson(json);
  Map<String, dynamic> toJson() => _$IncomingMessageToJson(this);
}
