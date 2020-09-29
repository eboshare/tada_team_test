import 'package:dartz/dartz.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';
import 'package:tada_team_test/layers/domain/failures/history_failure.dart';
import 'package:tada_team_test/layers/domain/failures/room_list_failure.dart';
import 'package:tada_team_test/layers/domain/failures/settings_failure.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';

abstract class IChatFacade {
  IChatRoom enterRoom({String roomName, String username});

  Future<Either<SettingsFailure, Settings>> getSettings();

  Future<Either<RoomListFailure, List<Room>>> getRoomList();

  Future<Either<ChatHistoryFailure, List<IncomingMessage>>> getMessageHistory(String roomName);
}
