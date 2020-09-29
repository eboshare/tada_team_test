import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'outgoing_message.g.dart';
part 'outgoing_message.freezed.dart';

@freezed
abstract class OutgoingMessage with _$OutgoingMessage {
  factory OutgoingMessage({
    @JsonKey(name: 'id') @required String id,
    @JsonKey(name: 'room') @required String roomName,
    @JsonKey(name: 'text') @required String text,
  }) = _OutgoingMessage;

  factory OutgoingMessage.fromJson(Map<String, dynamic> json) => _$OutgoingMessageFromJson(json);
}
