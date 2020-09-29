import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'package:tada_team_test/utils/enums.dart';
import 'package:tada_team_test/utils/store_helpers.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_facade.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';
import 'package:tada_team_test/layers/domain/stores/i_global_store.dart';

part 'chat_list_store.g.dart';

@Singleton(as: IChatListStore)
class ChatListPageStore = ChatListPageStoreBase with _$ChatListPageStore;

abstract class ChatListPageStoreBase with Store implements IChatListStore {
  final IChatFacade _facade;
  final IGlobalStore _globalStore;

  ChatListPageStoreBase(this._facade, this._globalStore);

  @override
  void init() {
    _facade.init(_globalStore.username);
  }

  @override
  void close() {
    _facade.close();
  }

  @observable
  List<Room> _rooms;

  @observable
  LoadingStatus _status;

  @override
  @computed
  List<Room> get rooms => _rooms;

  @override
  @computed
  LoadingStatus get status => _status;

  @override
  @action
  Future<void> loadRooms() async {
    _status = LoadingStatus.loading;
    await _facade.getRoomList()
      ..fold(
        (_) {
          _status = LoadingStatus.error;
        },
        (rooms) {
          _rooms = rooms;
          _status = LoadingStatus.success;
        },
      );
  }

  @override
  @action
  Future<void> refreshRooms() async {
    await _facade.getRoomList()
      ..fold(
        (_) => null,
        (rooms) => {
          _rooms = rooms,
        },
      );
  }
}
