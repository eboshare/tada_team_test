import 'package:meta/meta.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';

enum HistoryStatus {
  loading,
  error,
  success,
  roomNotFound,
}

abstract class IChatRoomStore {
  List<IncomingMessage> get history;

  HistoryStatus get historyStatus;

  void enterRoom(String roomName);

  void leaveRoom();

  Future<void> loadMessageHistory(String roomName);

  void sendMessage(String text);
}
