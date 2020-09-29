import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message/outgoing_message.dart';

typedef OnMessage = void Function(IncomingMessage message);

abstract class IChatService {
  IChatRoom enterRoom({String roomName, String username});
}

abstract class IChatRoom {
  void sendMessage(String text);

  void listenToMessages(OnMessage onMessage);
  
  void leaveRoom();
}
