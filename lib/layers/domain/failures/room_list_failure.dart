import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_list_failure.freezed.dart';

@freezed
abstract class RoomListFailure with _$RoomListFailure {
  factory RoomListFailure.unknown() = UnknownRoomListFailure;
}
