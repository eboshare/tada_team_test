import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/helper/store_helpers.dart';
import 'package:tada_team_test/layers/domain/entities/incoming_message.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
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
  final IChatFacade facade;
  final IGlobalStore globalStore;
  
  ChatRoomStoreBase(this.facade, this.globalStore);

  @observable
  IChatRoom _chatRoom;

  @observable
  List<IncomingMessage> _history;

  @override
  @computed
  List<IncomingMessage> get history => _history;

  @override
  @computed
  LoadingStatus get status => mapObservableFutureToStatus(_loadHistoryFuture);

  @observable
  ObservableFuture<void> _loadHistoryFuture;

  @action
  Future<void> _loadMessageHistory(String roomName) async {
    final response = await facade.getMessageHistory(roomName);
    _history = response.result;
  }

  @override
  @action
  void loadMessageHistory(String roomName) {
    _loadHistoryFuture = ObservableFuture(_loadMessageHistory(roomName));
  }

  @override
  void enterRoom(String roomName) {
    _chatRoom = facade.enterRoom(
      roomName: roomName,
      username: globalStore.username,
    );
    _chatRoom.listenToMessages((message) {
      _history = [..._history, message];
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
