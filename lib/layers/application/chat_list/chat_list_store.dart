import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import 'package:tada_team_test/helper/constants.dart';
import 'package:tada_team_test/helper/store_helpers.dart';
import 'package:tada_team_test/layers/domain/entities/room.dart';
import 'package:tada_team_test/layers/domain/repositories/i_chat_client.dart';
import 'package:tada_team_test/layers/domain/stores/i_chat_list_store.dart';

part 'chat_list_store.g.dart';

@Singleton(as: IChatListStore)
class ChatListPageStore = ChatListPageStoreBase with _$ChatListPageStore;

abstract class ChatListPageStoreBase with Store implements IChatListStore {
  final IChatClient client;
  ChatListPageStoreBase(this.client);

  @observable
  List<Room> _rooms;

  @override
  @computed
  List<Room> get rooms => _rooms;

  @override
  @computed
  LoadingStatus get status => mapObservableFutureToStatus(_loadRoomsFuture);

  @observable
  ObservableFuture<void> _loadRoomsFuture;

  @action
  Future<void> _loadRooms() async {
    final response = await client.getRoomList();
    _rooms = response.result;
  }

  @override
  @action
  void loadRooms() {
    _loadRoomsFuture = ObservableFuture(_loadRooms());
  }
}