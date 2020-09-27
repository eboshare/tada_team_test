import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:web_socket_channel/io.dart';

part 'outgoing_message.g.dart';

@JsonSerializable()
class OutgoingMessage {
  @JsonKey(name: 'room')
  final String room;

  @JsonKey(name: 'text')
  final String text;

  @JsonKey(name: 'id')
  final String id;

  const OutgoingMessage({
    @required this.room,
    @required this.text,
    @required this.id,
  });

  factory OutgoingMessage.fromJson(Map<String, dynamic> json) => _$OutgoingMessageFromJson(json);
  Map<String, dynamic> toJson() => _$OutgoingMessageToJson(this);
}
