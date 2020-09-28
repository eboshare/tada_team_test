import 'package:injectable/injectable.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_facade.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';

@Singleton(as: IChatFacade)
class NaneChatFacade implements IChatFacade {
  final IChatClient chatClient;
  final IChatService chatProvider;

  const NaneChatFacade(this.chatClient, this.chatProvider);

  @override
  IChatRoom enterRoom({String roomName, String username}) {
    return chatProvider.enterRoom(roomName: roomName, username: username);
  }

  @override
  Future<IncomingMessageListResponse> getMessageHistory(String roomName) {
    return chatClient.getMessageHistory(roomName);
  }

  @override
  Future<RoomListResponse> getRoomList() => chatClient.getRoomList();

  @override
  Future<SettingsResponse> getSettings() => chatClient.getSettings();
}
