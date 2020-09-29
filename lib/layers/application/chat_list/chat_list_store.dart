import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/helper/store_helpers.dart';
import 'package:tada_team_test/layers/domain/entities/room/room.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_facade.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';

part 'chat_list_store.g.dart';

@Singleton(as: IChatListStore)
class ChatListPageStore = ChatListPageStoreBase with _$ChatListPageStore;

abstract class ChatListPageStoreBase with Store implements IChatListStore {
  final IChatFacade _facade;
  ChatListPageStoreBase(this._facade);

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
      ..fold((_) {
        _status = LoadingStatus.error;
      }, (rooms) {
        _rooms = rooms;
        _status = LoadingStatus.success;
      });
  }
}
