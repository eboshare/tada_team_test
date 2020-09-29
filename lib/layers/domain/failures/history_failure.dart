import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_failure.freezed.dart';

@freezed
abstract class ChatHistoryFailure with _$ChatHistoryFailure {
  factory ChatHistoryFailure.unknown() = UnknownHistoryFailure;
  factory ChatHistoryFailure.roomNotFound(String message) = ChatRoomNotFoundFailure;
}
