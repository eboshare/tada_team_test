import 'package:meta/meta.dart';
import 'package:intl/intl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tada_team_test/layers/domain/entities/sender/sender.dart';

part 'incoming_message.freezed.dart';
part 'incoming_message.g.dart';

DateTime isoDateTimeFromJson(String dateTimeString) => DateTime.parse(dateTimeString);

String isoDateToJson(DateTime dateTime) => dateTime.toIso8601String();

@freezed
abstract class IncomingMessageListResponse with _$IncomingMessageListResponse {
  factory IncomingMessageListResponse({
    @JsonKey(name: 'result') List<IncomingMessage> result,
    @JsonKey(name: 'error') String error,
  }) = _IncomingMessageListResponse;

  factory IncomingMessageListResponse.fromJson(Map<String, dynamic> json) =>
      _$IncomingMessageListResponseFromJson(json);
}

@freezed
abstract class IncomingMessage with _$IncomingMessage {
  factory IncomingMessage({
    @JsonKey(name: 'id') String id,
    @JsonKey(name: 'room') @required String roomName,
    @JsonKey(name: 'text') @required String text,
    @JsonKey(name: 'sender') @required Sender sender,
    @JsonKey(name: 'created', fromJson: isoDateTimeFromJson, toJson: isoDateToJson) @required DateTime createdAt,
  }) = _IncomingMessage;

  factory IncomingMessage.fromJson(Map<String, dynamic> json) => _$IncomingMessageFromJson(json);
}
