import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message.dart';

abstract class IChatService {
  IChat enterRoom({String roomName, String username});
}

abstract class IChat {
  void sendMessage(String text);

  void listenToMessages(void Function(IncomingMessage message) onMessage);
  
  void close();
}
