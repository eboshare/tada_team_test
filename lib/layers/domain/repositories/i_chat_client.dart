import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings.dart';

abstract class IChatClient {
  Future<SettingsResponse> getSettings();

  Future<RoomListResponse> getRoomList();

  Future<IncomingMessageListResponse> getMessageHistory(String roomName);
}
