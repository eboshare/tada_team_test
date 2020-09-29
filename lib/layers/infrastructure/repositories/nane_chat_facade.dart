import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/entities/settings/settings.dart';
import 'package:tada_team_test/layers/domain/failures/history_failure.dart';
import 'package:tada_team_test/layers/domain/failures/room_list_failure.dart';
import 'package:tada_team_test/layers/domain/failures/settings_failure.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_facade.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';

@Singleton(as: IChatFacade)
class NaneChatFacade implements IChatFacade {
  final IChatClient _chatClient;
  final IChatService _chatService;

  const NaneChatFacade(this._chatClient, this._chatService);

  @override
  void init(String username) {
    _chatService.init(username);
  }

  @override
  void close() {
    _chatService.close();
  }

  @override
  IChatRoom enterRoom({String roomName, String username}) {
    return _chatService.enterRoom(roomName: roomName, username: username);
  }

  @override
  Future<Either<ChatHistoryFailure, List<IncomingMessage>>> getMessageHistory(String roomName) async {
    try {
      final response = await _chatClient.getMessageHistory(roomName);
      return Right(response.result);
    } on DioError catch (error) {
      if (error?.response?.statusCode == HttpStatus.notFound) {
        return Left(ChatHistoryFailure.roomNotFound(error.response.data));
      } else {
        return Left(ChatHistoryFailure.unknown());
      }
    }
  }

  @override
  Future<Either<RoomListFailure, List<Room>>> getRoomList() async {
    try {
      final response = await _chatClient.getRoomList();
      return Right(response.result);
    } on DioError catch (_) {
      return Left(RoomListFailure.unknown());
    }
  }

  @override
  Future<Either<SettingsFailure, Settings>> getSettings() async {
    try {
      final response = await _chatClient.getSettings();
      return Right(response.result);
    } on DioError catch (_) {
      return Left(SettingsFailure.unknown());
    }
  }
}
