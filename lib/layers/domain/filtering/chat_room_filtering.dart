import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';

bool isMyMessage(String myUsername, IncomingMessage message) {
  return myUsername == message.sender.username;
}
