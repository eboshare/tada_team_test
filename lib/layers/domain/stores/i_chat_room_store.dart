import 'package:meta/meta.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';

abstract class IChatRoomStore {
  List<IncomingMessage> get history;

  LoadingStatus get status;

  void enterRoom({
    @required String roomName,
    @required String username,
  });

  void leaveRoom();

  void loadMessageHistory(String roomName);

  void sendMessage(String text);
}
