import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:intl/intl.dart';

import 'package:tada_team_test/layers/domain/entities/sender.dart';

part 'incoming_message.g.dart';

DateTime isoDateTimeFromJson(String dateTimeString) => DateTime.parse(dateTimeString);

String isoDateToJson(DateTime dateTime) => dateTime.toIso8601String();

@JsonSerializable()
class IncomingMessageListResponse {
  @JsonKey(name: 'result')
  final List<IncomingMessage> result;

  const IncomingMessageListResponse({
    @required this.result,
  });

  factory IncomingMessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$IncomingMessageListResponseFromJson(json);
  Map<String, dynamic> toJson() => _$IncomingMessageListResponseToJson(this);
}

@JsonSerializable()
class IncomingMessage {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'room')
  final String roomName;

  @JsonKey(name: 'text')
  final String text;

  @JsonKey(
    name: 'created',
    fromJson: isoDateTimeFromJson,
    toJson: isoDateToJson,
  )
  final DateTime createdAt;

  @JsonKey(name: 'sender')
  final Sender sender;

  const IncomingMessage({
    @required this.id,
    @required this.roomName,
    @required this.text,
    @required this.createdAt,
    @required this.sender,
  });

  factory IncomingMessage.fromJson(Map<String, dynamic> json) => _$IncomingMessageFromJson(json);
  Map<String, dynamic> toJson() => _$IncomingMessageToJson(this);
}
