import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/outgoing_message.dart';

abstract class IChatRoomsRepository {
  IChatRepository enterRoom({String roomName});
}

abstract class IChatRepository {
  void sendMessage(String text);

  void listenToMessages(void Function(IncomingMessage message) onMessage);
  
  void close();
}
