import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';

import 'package:tada_team_test/utils/extensions.dart';
import 'package:tada_team_test/utils/enums.dart';
import 'package:tada_team_test/utils/store_helpers.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_facade.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_service.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_room_store.dart';
import 'package:tada_team_test/layers/domain/stores/i_global_store.dart';

part 'chat_room_store.g.dart';

@Injectable(as: IChatRoomStore)
class ChatRoomStore = ChatRoomStoreBase with _$ChatRoomStore;

abstract class ChatRoomStoreBase with Store implements IChatRoomStore {
  final IChatFacade _facade;
  final IGlobalStore _globalStore;

  ChatRoomStoreBase(this._facade, this._globalStore);

  @observable
  IChatRoom _chatRoom;

  @observable
  List<IncomingMessage> _history;

  @override
  @computed
  List<IncomingMessage> get history => _history;

  @observable
  HistoryStatus _historyStatus;

  @override
  @computed
  HistoryStatus get historyStatus => _historyStatus;

  @override
  @action
  Future<void> loadMessageHistory(String roomName) async {
    _historyStatus = HistoryStatus.loading;
    await _facade.getMessageHistory(roomName)
      ..fold(
        (failure) {
          failure.when(
            unknown: () => _historyStatus = HistoryStatus.error,
            roomNotFound: (_) => _historyStatus = HistoryStatus.roomNotFound,
          );
        },
        (messages) {
          _history = messages;
          _historyStatus = HistoryStatus.success;
        },
      );
  }

  @override
  void enterRoom(String roomName) {
    _chatRoom = _facade.enterRoom(
      roomName: roomName,
      username: _globalStore.username,
    );
    _chatRoom.listenToMessages((message) {
      _history = [
        ..._history ?? [],
        message,
      ];
      _historyStatus = HistoryStatus.success;
    });
    loadMessageHistory(roomName);
  }

  @override
  void leaveRoom() {
    _chatRoom.leaveRoom();
  }

  @override
  @action
  void sendMessage(String text) {
    _chatRoom.sendMessage(text);
  }
}
