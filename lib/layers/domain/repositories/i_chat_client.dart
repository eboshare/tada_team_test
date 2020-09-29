import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';

abstract class IChatClient {
  Future<SettingsResponse> getSettings();

  Future<RoomListResponse> getRoomList();

  Future<IncomingMessageListResponse> getMessageHistory(String roomName);
}
